import asyncio
import base64
import os
import re
import time
import unittest
import uuid
from dataclasses import dataclass, field
from datetime import datetime, timedelta
from pathlib import Path
from pprint import pformat
from typing import Any

import httpx
import xmltodict
from deepdiff import DeepDiff
from esdl.esdl_handler import EnergySystemHandler
from omotes_sdk.job_status import JobStatus

from influxdb import InfluxDBClient

# Jobs are submitted and polled through the orchestrator's REST API, matching how any
# other (frontend) client would use it.
ORCHESTRATOR_HOST = os.environ.get("ORCHESTRATOR_HOST", "localhost")
ORCHESTRATOR_PORT = os.environ.get("ORCHESTRATOR_PORT", "9210")
ORCHESTRATOR_BASE_URL = f"http://{ORCHESTRATOR_HOST}:{ORCHESTRATOR_PORT}"

INFLUXDB_CONFIG = {
    "host": os.environ.get("INFLUXDB_HOST", "localhost"),
    "port": int(os.environ.get("INFLUXDB_PORT", "8196")),
    "username": os.environ.get("INFLUXDB_ADMIN_USER", "root"),
    "password": os.environ.get("INFLUXDB_ADMIN_PASSWORD", "9012"),
}

TERMINAL_JOB_STATUSES = {
    JobStatus.SUCCEEDED,
    JobStatus.CANCELLED,
    JobStatus.ERROR,
    JobStatus.TIMEOUT,
}

# KPI content is tested separately in test__simulator__kpis_present_in_output
# and changes with each kpi-calculator release, so exclude it from snapshot comparisons.
# Note: this path assumes xmltodict parses a single <instance> element (dict, not list).
# If multi-instance ESDLs are introduced, this path will need to be updated.
EXCLUDE_KPI_PATHS: set[str] = {"root['esdl:EnergySystem']['instance']['area']['KPIs']"}

ESDL_VALUES_PRECISION = 1e-6

ARTIFACTS_DIR = Path(os.environ.get("OPTIMIZER_ARTIFACTS_DIR", "/app/test_esdl/artifacts"))


def save_output_esdl(test_name: str, output_esdl: str) -> None:
    """Write the optimizer output ESDL to the artifacts directory for CI upload."""
    try:
        ARTIFACTS_DIR.mkdir(parents=True, exist_ok=True)
        (ARTIFACTS_DIR / f"{test_name}.esdl").write_text(output_esdl, encoding="utf-8")
    except OSError as exc:
        print(f"[{test_name}] WARNING: could not save artifact: {exc}", flush=True)


@dataclass
class WorkflowRunResult:
    run_id: uuid.UUID
    status: JobStatus
    output_esdl: str | None = None
    esdl_feedback: list[dict[str, Any]] = field(default_factory=list)
    logs: str = ""
    progress_updates: list[float] = field(default_factory=list)


async def run_workflow(
    job_name: str,
    esdl_file: str,
    workflow_type: str,
    workflow_config: dict[str, Any],
    timeout_seconds: float = 300.0,
    poll_interval_seconds: float = 1.0,
) -> WorkflowRunResult:
    """Submit a job via the orchestrator REST API and poll it until it reaches a terminal status."""
    input_esdl_b64 = base64.b64encode(esdl_file.encode("utf-8")).decode("ascii")

    async with httpx.AsyncClient(base_url=ORCHESTRATOR_BASE_URL, timeout=30.0) as client:
        try:
            create_response = await client.post(
                "/job/",
                json={
                    "job_name": job_name,
                    "workflow_type": workflow_type,
                    "user_name": "system_tests",
                    "input_esdl": input_esdl_b64,
                    "input_params_dict": workflow_config,
                },
            )
        except httpx.ConnectError as exc:
            raise httpx.ConnectError(
                f"Could not reach the orchestrator at {ORCHESTRATOR_BASE_URL}. "
                "Is the omotes-system-tests stack running? "
                "Start it with ./scripts/start-dev.sh (or set ORCHESTRATOR_HOST/"
                "ORCHESTRATOR_PORT to point at a running instance)."
            ) from exc
        create_response.raise_for_status()
        job_id = create_response.json()["job_id"]

        deadline = time.monotonic() + timeout_seconds
        progress_updates: list[float] = []
        while True:
            job_response = await client.get(f"/job/{job_id}")
            job_response.raise_for_status()
            job = job_response.json()
            status = JobStatus(job["status"])

            progress_fraction = job.get("progress_fraction")
            if progress_fraction is not None:
                progress_updates.append(progress_fraction)

            if status in TERMINAL_JOB_STATUSES:
                output_esdl = None
                if job.get("output_esdl"):
                    output_esdl = base64.b64decode(job["output_esdl"]).decode("utf-8")
                return WorkflowRunResult(
                    run_id=uuid.UUID(job_id),
                    status=status,
                    output_esdl=output_esdl,
                    esdl_feedback=job.get("esdl_feedback", []),
                    logs=job.get("logs", ""),
                    progress_updates=progress_updates,
                )

            if time.monotonic() > deadline:
                raise AssertionError(
                    f"Job '{job_id}' did not finish within {timeout_seconds} seconds (last status: {status})."
                )

            await asyncio.sleep(poll_interval_seconds)


def retrieve_esdl_file(path_str: str) -> str:
    path = Path(path_str)

    assert path.is_file(), f"The ESDL at {path.absolute()} does not exist."

    with open(path) as open_file:
        esdl_file = open_file.read()

    return esdl_file


ATTRIBUTE_REGEX_TO_IGNORE = {
    "id": "[a-z0-9-]+",  # uuid
    "database": "[a-z0-9-]+",  # uuid
    "schema": "[a-z0-9-]+",  # uuid
    "reference": "[a-z0-9-]+",  # uuid
    "tableName": "[a-z0-9-]+",  # uuid
    "configuration": "[a-z0-9-]+",  # uuid
    "releaseDate": ".*",  # any format
}

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


def influxdb_database_exists(output_esdl: str | None) -> bool:
    assert output_esdl is not None, "No output ESDL was returned for the job."
    output_esh = EnergySystemHandler()
    output_esh.load_from_string(output_esdl)
    db_name = output_esh.energy_system.id
    with InfluxDBConnection(
        host=INFLUXDB_CONFIG["host"],
        port=INFLUXDB_CONFIG["port"],
        username=INFLUXDB_CONFIG["username"],
        password=INFLUXDB_CONFIG["password"],
    ) as client:
        databases = client.get_list_database()
        return any(db["name"] == db_name for db in databases)


def assert_influxdb_database_existence(output_esdl: str | None, should_exist: bool) -> None:
    db_exists = influxdb_database_exists(output_esdl)
    assert db_exists is should_exist


class TestWorkflows(unittest.IsolatedAsyncioTestCase):
    def expect_a_result(
        self,
        run_result: WorkflowRunResult,
        expected_status: JobStatus,
    ):
        if run_result.status != expected_status:
            print(run_result.output_esdl)
            print("-------------------------------------------")
            print(run_result.logs)
            self.fail(f"The job did not finish as {expected_status}. Found {run_result.status}")

        if expected_status == JobStatus.SUCCEEDED:
            updates = run_result.progress_updates
            self.assertGreaterEqual(len(updates), 1, "Expected at least one progress update to be received.")
            self.assertEqual(updates, sorted(updates), f"Progress should never decrease. Found {updates}")

    def compare_esdl(
        self,
        expected_esdl: str,
        result_esdl: str | None,
        exclude_paths: set[str] | None = None,
    ) -> None:
        """Compare two ESDL strings for equality after normalization.

        :param exclude_paths: Optional DeepDiff paths to ignore (e.g. EXCLUDE_KPI_PATHS).
        """
        assert result_esdl is not None, "No output ESDL was returned for the job."
        expected = normalize_esdl(expected_esdl)
        result = normalize_esdl(result_esdl)
        diff = DeepDiff(
            expected, result, math_epsilon=ESDL_VALUES_PRECISION, exclude_paths=list(exclude_paths or set())
        )

        if diff:
            diff_msg = pformat(diff)
            self.fail(f"Found the following differences:\n{diff_msg}")

    async def test__grow_optimizer_default__happy_path(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_default"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__grow_optimizer_default__happy_path", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__grow_optimizer_default__happy_path.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl)

    async def test__grow_optimizer_no_heat_losses__happy_path(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_no_heat_losses"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__grow_optimizer_no_heat_losses__happy_path", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__grow_optimizer_no_heat_losses__happy_path.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl)

    async def test__simulator__happy_path(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        workflow_config = {
            "timestep": timedelta(hours=1).total_seconds(),
            "start_time": datetime(2019, 1, 1, 0, 0, 0).isoformat(),
            "end_time": datetime(2019, 1, 1, 3, 0, 0).isoformat(),
        }

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, workflow_config)

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__simulator__happy_path", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__simulator__happy_path.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl, exclude_paths=EXCLUDE_KPI_PATHS)

        # assert time series data created
        assert_influxdb_database_existence(run_result.output_esdl, True)

    @unittest.skip("TODO: reinstate after fix in simulator-worker")
    async def test__simulator__ates_run(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_ates_short_run.esdl")
        workflow_type = "simulator"
        workflow_config = {
            "timestep": timedelta(hours=1).total_seconds(),
            "start_time": datetime(2019, 1, 1, 0, 0, 0).isoformat(),
            "end_time": datetime(2019, 1, 1, 3, 0, 0).isoformat(),
        }

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, workflow_config)

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__simulator__ates_run", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__simulator__ates_run.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl, exclude_paths=EXCLUDE_KPI_PATHS)

        # assert time series data created
        assert_influxdb_database_existence(run_result.output_esdl, True)

    async def test__grow_optimizer_default__happy_path_1source(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_1source.esdl")
        workflow_type = "grow_optimizer_default"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__grow_optimizer_default__happy_path_1source", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__grow_optimizer_default__happy_path_1source.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl)

    async def test__grow_optimizer_default__happy_path_2ndsource(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_2ndsource.esdl")
        workflow_type = "grow_optimizer_default"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl("test__grow_optimizer_default__happy_path_2ndsource", run_result.output_esdl)
        expected_esdl = retrieve_esdl_file("./test_esdl/output/test__grow_optimizer_default__happy_path_2ndsource.esdl")
        self.compare_esdl(expected_esdl, run_result.output_esdl)

    async def test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped(
        self,
    ) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_2ndsource_merit_order_swapped.esdl")
        workflow_type = "grow_optimizer_default"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        if run_result.output_esdl:
            save_output_esdl(
                "test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped",
                run_result.output_esdl,
            )
        expected_esdl = retrieve_esdl_file(
            "./test_esdl/output/test__grow_optimizer_default__happy_path_2ndsource_merit_order_swapped.esdl"
        )
        self.compare_esdl(expected_esdl, run_result.output_esdl)

    async def test__grow_optimizer_default__error_with_feedback_message(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial_feedback_error.esdl")
        workflow_type = "grow_optimizer_default"

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, {})

        # Assert
        self.expect_a_result(run_result, JobStatus.ERROR)

        first_feedback = run_result.esdl_feedback[0]
        self.assertEqual("general", first_feedback["assetID"])
        self.assertEqual(
            (
                "Asset insufficient installed capacity: please increase the installed power or "
                "reduce the demand profile peak value of the demand(s) listed."
            ),
            first_feedback["messages"][0]["validation_message"],
        )
        self.assertEqual("ERROR", first_feedback["messages"][0]["severity"])

        second_feedback = run_result.esdl_feedback[1]
        self.assertEqual("b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c", second_feedback["assetID"])
        self.assertEqual(
            (
                "Asset named HeatingDemand_b0ff: The installed capacity of 15.0MW should be "
                "larger than the maximum of the heat demand profile 32.208MW"
            ),
            second_feedback["messages"][0]["validation_message"],
        )
        self.assertEqual("ERROR", second_feedback["messages"][0]["severity"])

    @unittest.skip("TODO: reinstate after fix in simulator-worker")
    async def test__simulator__kpis_present_in_output(self) -> None:
        """Test that KPIs are calculated and stored in the output ESDL.

        Uses simulator_ates_short_run.esdl which contains costInformation on assets,
        allowing the kpi-calculator to produce non-trivial KPI results.
        """
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_ates_short_run.esdl")
        workflow_type = "simulator"
        workflow_config = {
            "timestep": timedelta(hours=1).total_seconds(),
            "start_time": datetime(2019, 1, 1, 0, 0, 0).isoformat(),
            "end_time": datetime(2019, 1, 1, 3, 0, 0).isoformat(),
        }

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, workflow_config)

        # Assert
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)

        output_esh = EnergySystemHandler()
        output_esh.load_from_string(run_result.output_esdl)
        energy_system = output_esh.energy_system

        # KPIs are attached to instance[0].area, not energy_system directly
        self.assertGreater(len(energy_system.instance), 0, "Output ESDL must have at least one instance")
        main_area = energy_system.instance[0].area
        self.assertIsNotNone(main_area, "instance[0] must have an area")
        self.assertIsNotNone(main_area.KPIs, "KPIs should be present in the main area")
        kpi_list = list(main_area.KPIs.kpi)
        self.assertGreater(len(kpi_list), 0, "At least one KPI should be calculated")
        for kpi in kpi_list:
            self.assertNotEqual(kpi.name, "", "Each KPI should have a name")

        kpi_by_name = {kpi.name: kpi for kpi in kpi_list}

        # Assert all expected KPI categories are present
        expected_kpi_names = {
            "High level cost breakdown [EUR]",
            "Net Present Value [EUR]",
            "Equivalent Annual Cost [EUR/yr]",
            "Total Cost of Ownership [EUR]",
            "Energy breakdown [Wh]",
        }
        self.assertEqual(
            expected_kpi_names,
            set(kpi_by_name.keys()),
            "KPI names do not match expected set",
        )

        # CAPEX: the ATES asset in simulator_ates_short_run.esdl has
        # investmentCosts=2333594.0 EUR — only asset with cost data so total CAPEX equals that.
        # OPEX: fixedOperationalCosts(30000) + fixedMaintenanceCosts(115472.22)
        #       + variableOperationalCosts(69666.67) = 215138.89 EUR/yr — asset-level, time-independent.
        cost_items = {
            item.label: item.value for item in kpi_by_name["High level cost breakdown [EUR]"].distribution.stringItem
        }
        self.assertAlmostEqual(
            cost_items.get("CAPEX (total)", 0.0),
            2_333_594.0,
            places=1,
            msg=f"CAPEX should match investmentCosts in simulator_ates_short_run.esdl; got {cost_items}",
        )
        self.assertAlmostEqual(
            cost_items.get("OPEX (yearly)", 0.0),
            215_138.89,
            places=1,
            msg=f"OPEX should match sum of fixed/variable costs in simulator_ates_short_run.esdl; got {cost_items}",
        )

        # Energy breakdown: confirms time-series results flowed through the simulation
        energy_items = {item.label: item.value for item in kpi_by_name["Energy breakdown [Wh]"].distribution.stringItem}
        self.assertIn("Production", energy_items, "Energy breakdown should contain Production")
        self.assertIn("Demand", energy_items, "Energy breakdown should contain Demand")
        self.assertGreater(energy_items["Production"], 0.0, "Production energy should be positive")
        self.assertGreater(energy_items["Demand"], 0.0, "Demand energy should be positive")

    @unittest.skip("TODO: reinstate after implementation in the orchestrator")
    async def test__simulator__delete_time_series_data_after_run(self) -> None:
        # Arrange
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        workflow_config = {
            "timestep": timedelta(hours=1).total_seconds(),
            "start_time": datetime(2019, 1, 1, 0, 0, 0).isoformat(),
            "end_time": datetime(2019, 1, 1, 3, 0, 0).isoformat(),
        }

        # Act
        run_result = await run_workflow(self._testMethodName, esdl_file, workflow_type, workflow_config)

        # Assert simulator run succeeded and created timeseries data.
        self.expect_a_result(run_result, JobStatus.SUCCEEDED)
        assert_influxdb_database_existence(run_result.output_esdl, True)

        # Delete the job through the orchestrator API and assert response contract.
        async with httpx.AsyncClient(base_url=ORCHESTRATOR_BASE_URL, timeout=30.0) as client:
            delete_response = await client.delete(f"/job/{run_result.run_id}")
            delete_response.raise_for_status()
            delete_payload = delete_response.json()
            self.assertEqual(delete_payload["job_id"], str(run_result.run_id))
            self.assertTrue(delete_payload["deleted"])

        # Cleanup can be asynchronous, so poll for eventual deletion of time-series data.
        cleanup_timeout_seconds = 30.0
        cleanup_poll_interval_seconds = 2.0
        cleanup_deadline = time.monotonic() + cleanup_timeout_seconds
        while influxdb_database_exists(run_result.output_esdl):
            if time.monotonic() > cleanup_deadline:
                self.fail(
                    f"Expected InfluxDB timeseries database to be deleted within {cleanup_timeout_seconds} "
                    f"seconds after deleting job {run_result.run_id}."
                )
            await asyncio.sleep(cleanup_poll_interval_seconds)
