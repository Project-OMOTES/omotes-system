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

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
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
        self.has_result.wait(timeout)

    def handle_on_finished(self, _: Job, result: JobResult):
        self.has_result.set()
        self.result = result

    def handle_on_status_update(self, _: Job, status_update: JobStatusUpdate):
        self.status_updates.append(status_update)

    def handle_on_progress_update(self, _: Job, progress_update: JobProgressUpdate):
        self.progress_updates.append(progress_update)


@contextlib.contextmanager
def omotes_client() -> OmotesInterface:
    omotes_if = OmotesInterface(RABBITMQ_CONFIG, "system_test")
    omotes_if.start()
    yield omotes_if
    omotes_if.stop()


def retrieve_esdl_file(path_str: str) -> str:
    path = Path(path_str)

    assert path.is_file(), f"The ESDL at {path.absolute()} does not exist."

    with open(path) as open_file:
        esdl_file = open_file.read()

    return esdl_file


ID_PATTERN = re.compile(r"id=\"[a-z0-9-]+\"")
DATABASE_PATTERN = re.compile(r"database=\"[a-z0-9-]+\"")


def normalize_esdl(esdl: str) -> dict:
    esdl_normalized = ID_PATTERN.sub('id=""', esdl)
    esdl_normalized = DATABASE_PATTERN.sub('database=""', esdl_normalized)
    return xmltodict.parse(esdl_normalized)


def submit_a_job(
    omotes_client: OmotesInterface,
    esdl_file: str,
    workflow_type: str,
    params_dict: ParamsDict,
    omotes_job_result_handler: OmotesJobHandler,
) -> Job:
    return omotes_client.submit_job(
        esdl=esdl_file,
        workflow_type=omotes_client.get_workflow_type_manager().get_workflow_by_name(workflow_type),
        job_timeout=timedelta(hours=1),
        params_dict=params_dict,
        callback_on_finished=omotes_job_result_handler.handle_on_finished,
        callback_on_progress_update=omotes_job_result_handler.handle_on_progress_update,
        callback_on_status_update=omotes_job_result_handler.handle_on_status_update,
        auto_disconnect_on_result=True,
    )


class TestWorkflows(unittest.TestCase):
    def expect_a_result(
        self, omotes_job_result_handler: OmotesJobHandler, expected_result: JobResult.ResultType
    ):
        result = omotes_job_result_handler.result
        if not result.result_type == expected_result:
            print(result.output_esdl)
            print("-------------------------------------------")
            print(result.logs)
            self.fail(f"The job did not finish as {expected_result}. Found {result.result_type}")

    def compare_esdl(self, expected_esdl: str, result_esdl: str) -> None:
        expected = normalize_esdl(expected_esdl)
        result = normalize_esdl(result_esdl)
        diff_msg = pformat(DeepDiff(expected, result))

        self.assertEqual(expected, result, msg=f"Found the following differences:\n{diff_msg}")

    def test__grow_optimizer_default__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
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
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_no_heat_losses__happy_path.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_with_pressure__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_with_pressure"
        timeout_seconds = 120.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_with_pressure__happy_path.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_simulator__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_simulator"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_simulator__happy_path.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__simulator__happy_path(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 60.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0),
        }

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__simulator__happy_path.esdl")
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_default__happy_path_1source(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_1source.esdl")
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
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
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_2ndsource.esdl")
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0
        params_dict = {}

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path_2ndsource.esdl"
        )
        self.compare_esdl(expected_esdl, result_handler.result.output_esdl)

    def test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped(self) -> None:
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
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
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
        timeout_seconds = 60.0
        params_dict = {
            "timestep": datetime.timedelta(hours=1),
            "start_time": datetime.datetime(2019, 1, 1, 0, 0, 0),
            "end_time": datetime.datetime(2019, 1, 1, 3, 0, 0),
        }

        # Act
        with omotes_client() as omotes_client_:
            submit_a_job(omotes_client_, esdl_file, workflow_type, params_dict, result_handler)
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        output_esh = esdl.esdl_handler.EnergySystemHandler()
        output_esh.load_from_string(result_handler.result.output_esdl)
        self.assertEqual(
            output_esh.energy_system.name, "Untitled EnergySystem with return network_simulator"
        )

    def test__simulator__check_if_progress_updates_are_received(self) -> None:
        # Arrange
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 60.0
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
            (update for update in result_handler.progress_updates if update.progress == 0.0), None
        )
        last_update = next(
            (update for update in result_handler.progress_updates if update.progress == 1.0), None
        )
        self.assertIsNotNone(first_update)
        self.assertEqual(submitted_job.id, uuid.UUID(first_update.uuid))
        self.assertIsNotNone(last_update)
        self.assertEqual(submitted_job.id, uuid.UUID(last_update.uuid))
