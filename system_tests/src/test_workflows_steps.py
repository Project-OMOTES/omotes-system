import contextlib
import datetime
import os
import re
import threading
import unittest
import uuid
from datetime import timedelta
from pathlib import Path
from pprint import pformat
from time import sleep
from typing import Any
import psycopg
from psycopg.rows import dict_row
from influxdb import InfluxDBClient

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
from omotes_sdk_protocol.job_pb2 import EsdlMessage, JobSubmission
import xmltodict
from deepdiff import DeepDiff
from omotes_sdk.types import ParamsDict
import esdl.esdl_handler


RABBITMQ_CONFIG = RabbitMQConfig(
    username=os.environ.get("RABBITMQ_USERNAME", "omotes"),
    password=os.environ.get("RABBITMQ_PASSWORD", "somepass1"),
    virtual_host=os.environ.get("RABBITMQ_VIRTUALHOST", "omotes"),
    host=os.environ.get("RABBITMQ_HOST", "localhost"),
    port=int(os.environ.get("RABBITMQ_PORT", "5672")),
)

# KPI content is tested separately in test__simulator__kpis_present_in_output
# and changes with each kpi-calculator release, so exclude it from snapshot comparisons.
# Note: this path assumes xmltodict parses a single <instance> element (dict, not list).
# If multi-instance ESDLs are introduced, this path will need to be updated.
EXCLUDE_KPIS: set[str] = {"root['esdl:EnergySystem']['instance']['area']['KPIs']"}

SQL_CONFIG = {
    "host": os.environ.get("POSTGRES_HOST", "localhost"),
    "port": int(os.environ.get("POSTGRES_PORT", "6432")),
    "database": "omotes_jobs",
    "username": os.environ.get(
        "POSTGRES_ORCHESTRATOR_USER_NAME", "omotes_orchestrator"
    ),
    "password": os.environ.get("POSTGRES_ORCHESTRATOR_USER_PASSWORD", "somepass3"),
}

INFLUXDB_CONFIG = {
    "host": os.environ.get("INFLUXDB_HOST", "localhost"),
    "port": 8096,
    "username": os.environ.get("INFLUXDB_ADMIN_USER", "root"),
    "password": os.environ.get("INFLUXDB_ADMIN_PASSWORD", "9012"),
}

ESDL_VALUES_PRECISION = 1e-6

class OmotesJobHandler:
    progress_updates: list[JobProgressUpdate]
    status_updates: list[JobStatusUpdate]
    has_result: threading.Event
    result: JobResult | None

    def __init__(self):
        self.progress_updates = []
        self.status_updates = []
        self.has_result = threading.Event()
        self.result = None

    def wait_until_result(self, timeout: float | None = None):
        assert self.has_result.wait(timeout), (
            f"The result was not received within the " f"timeout {timeout} seconds."
        )

    def handle_on_finished(self, _: Job, result: JobResult):
        self.has_result.set()
        self.result = result

    def handle_on_status_update(self, _: Job, status_update: JobStatusUpdate):
        self.status_updates.append(status_update)

    def handle_on_progress_update(self, _: Job, progress_update: JobProgressUpdate):
        self.progress_updates.append(progress_update)


@contextlib.contextmanager
def omotes_client() -> OmotesInterface:
    omotes_if = OmotesInterface(RABBITMQ_CONFIG, f"system_test_{uuid.uuid4()}")
    omotes_if.start()
    try:
        yield omotes_if
    finally:
        omotes_if.stop()


def retrieve_esdl_file(path_str: str) -> str:
    path = Path(path_str)

    assert path.is_file(), f"The ESDL at {path.absolute()} does not exist."

    with open(path) as open_file:
        esdl_file = open_file.read()

    return esdl_file

ATTRIBUTE_REGEX_TO_IGNORE = dict(
    id="[a-z0-9-]+", # uuid
    database="[a-z0-9-]+", # uuid
    reference="[a-z0-9-]+", # uuid
    releaseDate=".*", # any format
)

NUMBER_REGEX = re.compile(r"^-?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?$")


def convert_numeric_strings(value: Any) -> Any:
    if isinstance(value, dict):
        return {key: convert_numeric_strings(item) for key, item in value.items()}
    if isinstance(value, list):
        return [convert_numeric_strings(item) for item in value]
    if isinstance(value, str) and NUMBER_REGEX.match(value):
        try:
            return int(value)
        except ValueError:
            try:
                return float(value)
            except ValueError:
                return value
    return value


def normalize_esdl(esdl: str) -> dict:
    esdl_normalized = esdl
    for uuid_attribute, regex in ATTRIBUTE_REGEX_TO_IGNORE.items():
        pattern = re.compile(f'{uuid_attribute}="{regex}"')
        esdl_normalized = pattern.sub(f'{uuid_attribute}=""', esdl_normalized)
    parsed_esdl = xmltodict.parse(esdl_normalized)
    return convert_numeric_strings(parsed_esdl)


def submit_a_job(
    omotes_client: OmotesInterface,
    esdl_file: str,
    workflow_type: str,
    params_dict: ParamsDict,
    omotes_job_result_handler: OmotesJobHandler,
    job_timeout: timedelta = timedelta(hours=1),
    job_priority: JobSubmission.JobPriority = JobSubmission.JobPriority.LOW,
) -> Job:
    return omotes_client.submit_job(
        esdl=esdl_file,
        workflow_type=omotes_client.get_workflow_type_manager().get_workflow_by_name(
            workflow_type
        ),
        job_timeout=job_timeout,
        params_dict=params_dict,
        callback_on_finished=omotes_job_result_handler.handle_on_finished,
        callback_on_progress_update=omotes_job_result_handler.handle_on_progress_update,
        callback_on_status_update=omotes_job_result_handler.handle_on_status_update,
        auto_disconnect_on_result=True,
        job_priority=job_priority,
    )


def get_sql_esdl_time_series_info(job_id) -> Any:
    conn_str = (
        f"postgresql://{SQL_CONFIG['username']}:{SQL_CONFIG['password']}"
        f"@{SQL_CONFIG['host']}:{SQL_CONFIG['port']}/{SQL_CONFIG['database']}"
    )

    with psycopg.connect(conninfo=conn_str, row_factory=dict_row) as conn:
        with conn.cursor() as cur:
            query = "SELECT * FROM esdl_time_series_info WHERE job_id = %s"
            cur.execute(query, (job_id,))
            return cur.fetchone()


class InfluxDBConnection:
    def __init__(self, host, port, username, password, database=None):
        self.client = InfluxDBClient(
            host=host,
            port=port,
            username=username,
            password=password,
            database=database,
        )

    def __enter__(self):
        return self.client

    def __exit__(self, exc_type, exc_value, traceback):
        self.client.close()


def assert_influxdb_database_existence(output_esdl: str, should_exist: bool) -> None:
    output_esh = esdl.esdl_handler.EnergySystemHandler()
    output_esh.load_from_string(output_esdl)
    db_name = output_esh.energy_system.id
    print(f"DB NAME: {db_name}")
    with InfluxDBConnection(
        host=INFLUXDB_CONFIG["host"],
        port=INFLUXDB_CONFIG["port"],
        username=INFLUXDB_CONFIG["username"],
        password=INFLUXDB_CONFIG["password"],
    ) as client:
        databases = client.get_list_database()
        db_exists = any(db["name"] == db_name for db in databases)

        assert db_exists is should_exist


class TestWorkflows(unittest.TestCase):
    def expect_a_result(
        self,
        omotes_job_result_handler: OmotesJobHandler,
        expected_result: JobResult.ResultType,
    ):
        result = omotes_job_result_handler.result
        if not result.result_type == expected_result:
            print(result.output_esdl)
            print("-------------------------------------------")
            print(result.logs)
            self.fail(
                f"The job did not finish as {expected_result}. Found {result.result_type}"
            )

    def compare_esdl(
        self,
        expected_esdl: str,
        result_esdl: str,
        exclude_paths: set[str] | None = None,
    ) -> None:
        """Compare two ESDL strings for equality after normalization.

        :param exclude_paths: Optional DeepDiff paths to ignore (e.g. EXCLUDE_KPIS).
        """
        expected = normalize_esdl(expected_esdl)
        result = normalize_esdl(result_esdl)
        diff = DeepDiff(expected, result, math_epsilon=ESDL_VALUES_PRECISION, exclude_paths=exclude_paths)

        if diff:
            diff_msg = pformat(diff)
            self.fail(f"Found the following differences:\n{diff_msg}")

    def test__grow_optimizer_default__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_no_heat_losses__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_no_heat_losses"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_no_heat_losses__happy_path.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__simulator__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 120.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0, tzinfo=datetime.UTC),
        }

        # Act
        with omotes_client() as omotes_client_:
            submitted_job = submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__simulator__happy_path.esdl"
        )
        self.compare_esdl(
            expected_esdl, result_handler.result.output_esdl, exclude_paths=EXCLUDE_KPIS
        )

        # assert time series data created
        assert_influxdb_database_existence(result_handler.result.output_esdl, True)
        sql_esdl_time_series_info = get_sql_esdl_time_series_info(submitted_job.id)
        self.assertEqual(sql_esdl_time_series_info["job_id"], submitted_job.id)
        assert sql_esdl_time_series_info["deactivated_at"] is None

    def test__simulator__multiple_ates_run(self) -> None:
        """Test simulator by repeating the ATES run a number of times.

        This is to ensure that the pyjnius binding in simulator-core works repeatedly.
        We had issues where the pyjnius binding would hang indefinitely when used or wouldn't
        properly function after using it once.
        """
        # Arrange
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/simulator_ates_short_run.esdl"
        )
        workflow_type = "simulator"
        timeout_seconds = 120.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0, tzinfo=datetime.UTC),
        }

        # Act
        result_handlers = [OmotesJobHandler() for _ in range(0, 4)]
        with omotes_client() as omotes_client_:
            for result_handler in result_handlers:
                submit_a_job(
                    omotes_client_,
                    esdl_file,
                    workflow_type,
                    params_dict,
                    result_handler,
                )
            for result_handler in result_handlers:
                result_handler.wait_until_result(timeout_seconds)

        # Assert
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__simulator__multiple_ates_run.esdl"
        )

        for result_handler in result_handlers:
            self.expect_a_result(result_handler, JobResult.SUCCEEDED)
            self.compare_esdl(
                expected_esdl, result_handler.result.output_esdl, exclude_paths=EXCLUDE_KPIS
            )

    def test__grow_optimizer_default__happy_path_1source(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/optimizer_poc_tutorial_1source.esdl"
        )
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path_1source.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_default__happy_path_2ndsource(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/optimizer_poc_tutorial_2ndsource.esdl"
        )
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path_2ndsource.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped(
        self,
    ) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/optimizer_poc_tutorial_2ndsource_merit_order_swapped.esdl"
        )
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__simulator__job_reference_is_set(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 120.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0),
        }

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        output_esh = esdl.esdl_handler.EnergySystemHandler()
        output_esh.load_from_string(result_handler.result.output_esdl)
        self.assertEqual(
            output_esh.energy_system.name,
            "Untitled EnergySystem with return network_simulator",
        )

    def test__simulator__check_if_progress_updates_are_received(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 120.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0),
        }

        # Act
        with omotes_client() as omotes_client_:
            submitted_job = submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        first_update = next(
            (
                update
                for update in result_handler.progress_updates
                if update.progress == 0.0
            ),
            None,
        )
        last_update = next(
            (
                update
                for update in result_handler.progress_updates
                if update.progress == 1.0
            ),
            None,
        )
        self.assertIsNotNone(first_update)
        self.assertEqual(submitted_job.id, uuid.UUID(first_update.uuid))
        self.assertIsNotNone(last_update)
        self.assertEqual(submitted_job.id, uuid.UUID(last_update.uuid))

    def test__simulator__job_timeout_working(self) -> None:
        """This test depends on the environment variables:
            TIMEOUT_JOB_MANAGER_START_BUFFER_SEC (currently set to 2 seconds)
            TIMEOUT_JOB_HANDLER_RERUN_SEC (currently set to 5 seconds)

        They are defined in system_tests/docker-compose.override.yml
        """
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        job_timeout = timedelta(seconds=5)
        result_timeout_seconds = 10.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0),
            "end_time": datetime.datetime(2020, 1, 1, 0, 0, 0),
        }

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_,
                esdl_file,
                workflow_type,
                params_dict,
                result_handler,
                job_timeout=job_timeout,
            )
            result_handler.wait_until_result(result_timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.CANCELLED)

    def test__grow_optimizer_default__error_with_feedback_message(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/optimizer_poc_tutorial_feedback_error.esdl"
        )
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.ERROR)

        first_message = result_handler.result.esdl_messages[0]
        self.assertEqual(
            "Asset insufficient installed capacity: please increase the installed power or reduce the demand profile peak value of the demand(s) listed.",
            first_message.technical_message,
        )
        self.assertEqual(EsdlMessage.Severity.ERROR, first_message.severity)
        self.assertEqual("", first_message.esdl_object_id)

        second_message = result_handler.result.esdl_messages[1]
        self.assertEqual(
            "Asset named HeatingDemand_b0ff: The installed capacity of 15.0MW should be larger than the maximum of the heat demand profile 32.208MW",
            second_message.technical_message,
        )
        self.assertEqual(EsdlMessage.Severity.ERROR, second_message.severity)
        self.assertEqual(
            "b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c", second_message.esdl_object_id
        )

    def test__simulator__job_delete_while_running_working(self) -> None:
        """This test depends on the environment variable:
            JOB_RETENTION_SEC (currently set to 20 seconds)

        It is defined in system_tests/docker-compose.override.yml
        """
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 100.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
            "end_time": datetime.datetime(2020, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
        }

        # Act
        with omotes_client() as omotes_client_:
            submitted_job = submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            sleep(1)
            omotes_client_.delete_job(submitted_job)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.CANCELLED)

        # wait for time series manager to clean up (need two 10-second cycles)
        sleep(50)

        assert get_sql_esdl_time_series_info(submitted_job.id) is None

    def test__simulator__delete_time_series_data_after_run(self) -> None:
        """This test depends on the environment variable:
            JOB_RETENTION_SEC (currently set to 20 seconds)

        It is defined in system_tests/docker-compose.override.yml
        """
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 160.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0, tzinfo=datetime.UTC),
        }

        # Act
        with omotes_client() as omotes_client_:
            submitted_job = submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)
            sleep(1)
            omotes_client_.delete_job(submitted_job)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        output_esdl = result_handler.result.output_esdl

        # wait for time series manager to clean up (need two 10-second cycles)
        sleep(50)

        # assert time series data deleted
        assert_influxdb_database_existence(output_esdl, False)
        assert get_sql_esdl_time_series_info(submitted_job.id) is None

    def test__grow_optimizer__high_priority_job_runs_before_other_jobs(self) -> None:
        """This test submits 4 normal jobs followed by 1 high priority job.

        The 4 normal jobs are needed to ensure that the high priority job finishes before
        at least one of the previously committed jobs, with two active workers: two jobs
        start immediately, followed by a race between the next two jobs.
        NOTE: this number needs to be increased when the number of workers is increased
              (for instance due to the creation of a general mesido worker).
        """
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_no_heat_losses"
        params_dict = {}
        timeout_seconds = 200.0

        job_handlers: dict[uuid.UUID, OmotesJobHandler] = {}
        ordered_job_result_ids = []
        result_ids_lock = threading.Lock()

        def wait_for_all_jobs(timeout_seconds: float) -> None:
            condition = threading.Condition()

            def _watch_job(result_handler: OmotesJobHandler):
                result_handler.wait_until_result(timeout_seconds)
                with result_ids_lock:
                    ordered_job_result_ids.append(result_handler.result.uuid)
                with condition:
                    condition.notify_all()

            # watch all jobs
            for job_handler in job_handlers.values():
                threading.Thread(
                    target=_watch_job, args=(job_handler,), daemon=True
                ).start()

            # block until all jobs received a result
            with condition:
                assert condition.wait_for(
                    lambda: all(
                        job_handler.has_result.is_set()
                        for job_handler in job_handlers.values()
                    ),
                    timeout_seconds,
                ), (
                    f"The result was not received within the "
                    f"timeout {timeout_seconds} seconds."
                )

        # Act
        with omotes_client() as omotes_client_:
            # submit 4 low priority jobs
            for _ in range(4):
                result_handler = OmotesJobHandler()
                submitted_job = submit_a_job(
                    omotes_client_,
                    esdl_file,
                    workflow_type,
                    params_dict,
                    result_handler,
                )
                job_handlers[submitted_job.id] = result_handler

            sleep(1)  # make sure jobs are submitted

            # submit high priority job
            result_handler = OmotesJobHandler()
            high_priority_job = submit_a_job(
                omotes_client_,
                esdl_file,
                workflow_type,
                params_dict,
                result_handler,
                job_priority=JobSubmission.JobPriority.HIGH,
            )
            job_handlers[high_priority_job.id] = result_handler

            wait_for_all_jobs(timeout_seconds)

        # Assert
        # check if high priority job ran successfully
        self.assertTrue(str(high_priority_job.id) in ordered_job_result_ids)
        # check that high priority job result was not last (exact order may vary)
        self.assertNotEqual(str(high_priority_job.id), ordered_job_result_ids[-1])

    def test__simulator__kpis_present_in_output(self) -> None:
        """Test that KPIs are calculated and stored in the output ESDL.

        Uses simulator_ates_short_run.esdl which contains costInformation on assets,
        allowing the kpi-calculator to produce non-trivial KPI results.
        """
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file(
            "./test_esdl/input/simulator_ates_short_run.esdl"
        )
        workflow_type = "simulator"
        timeout_seconds = 120.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0, tzinfo=datetime.UTC),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0, tzinfo=datetime.UTC),
            "system_lifetime": 25.0,
        }

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, params_dict, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        output_esh = esdl.esdl_handler.EnergySystemHandler()
        output_esh.load_from_string(result_handler.result.output_esdl)
        energy_system = output_esh.energy_system

        # KPIs are attached to instance[0].area, not energy_system directly
        self.assertGreater(
            len(energy_system.instance), 0, "Output ESDL must have at least one instance"
        )
        main_area = energy_system.instance[0].area
        self.assertIsNotNone(main_area, "instance[0] must have an area")
        self.assertIsNotNone(main_area.KPIs, "KPIs should be present in the main area")
        kpi_list = list(main_area.KPIs.kpi)
        self.assertGreater(len(kpi_list), 0, "At least one KPI should be calculated")
        for kpi in kpi_list:
            self.assertNotEqual(kpi.name, "", "Each KPI should have a name")

        # CAPEX: the ATES asset in simulator_ates_short_run.esdl has
        # investmentCosts=2333594.0 EUR (bare EUR unit, no conversion factor).
        # This is the only asset with cost data so total CAPEX equals that value.
        expected_capex = 2_333_594.0
        kpi_by_name = {kpi.name: kpi for kpi in kpi_list}
        self.assertIn(
            "High level cost breakdown [EUR]",
            kpi_by_name,
            "Cost breakdown KPI missing from output",
        )
        cost_items = {
            item.label: item.value
            for item in kpi_by_name["High level cost breakdown [EUR]"].distribution.stringItem
        }
        self.assertAlmostEqual(
            cost_items.get("CAPEX (total)", 0.0),
            expected_capex,
            places=1,
            msg=f"CAPEX should match investmentCosts in simulator_ates_short_run.esdl; got {cost_items}",
        )
