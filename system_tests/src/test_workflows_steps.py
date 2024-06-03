import contextlib
import os
import re
import threading
import time
import unittest
from pathlib import Path

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
from omotes_sdk.workflow_type import WorkflowType, WorkflowTypeManager
import xmltodict

# TODO Now the SQL setup is moved to orchestrator, it takes a while for orchestrator to boot up.
#   Therefore, the queues may not yet have been declared. We should fix this in SDK by declaring
#   all the expected queues on orchestrators side on start up to ensure they are up.
#   See https://github.com/Project-OMOTES/computation-engine/issues/51
time.sleep(5)

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


def workflow_manager() -> WorkflowTypeManager:
    return WorkflowTypeManager(
        [
            WorkflowType("grow_optimizer_default", ""),
            WorkflowType("grow_simulator", ""),
            WorkflowType("grow_optimizer_no_heat_losses", ""),
            WorkflowType("grow_optimizer_with_pressure", ""),
            WorkflowType("simulator", ""),
        ]
    )


@contextlib.contextmanager
def omotes_client(workflow_manager: WorkflowTypeManager) -> OmotesInterface:
    omotes_if = OmotesInterface(RABBITMQ_CONFIG, possible_workflows=workflow_manager)
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


def normalize_esdl(esdl: str) -> dict:
    return xmltodict.parse(ID_PATTERN.sub('id=""', esdl))


def submit_a_job(
    omotes_client: OmotesInterface,
    esdl_file: str,
    workflow_type: str,
    workflow_manager: WorkflowTypeManager,
    omotes_job_result_handler: OmotesJobHandler,
):
    omotes_client.submit_job(
        esdl=esdl_file,
        workflow_type=workflow_manager.get_workflow_by_name(workflow_type),
        job_timeout=None,
        params_dict={},
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

    def test__grow_optimizer_default__happy_path(self) -> None:
        # Arrange
        workflow_manager_ = workflow_manager()
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_default"
        timeout_seconds = 60.0

        # Act
        with omotes_client(workflow_manager_) as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, workflow_manager_, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        self.assertEqual(
            normalize_esdl(
                retrieve_esdl_file(
                    "./test_esdl/output/test__grow_optimizer_default__happy_path.esdl"
                )
            ),
            normalize_esdl(result_handler.result.output_esdl),
        )

    def test__grow_optimizer_no_heat_losses__happy_path(self) -> None:
        # Arrange
        workflow_manager_ = workflow_manager()
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_no_heat_losses"
        timeout_seconds = 60.0

        # Act
        with omotes_client(workflow_manager_) as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, workflow_manager_, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        self.assertEqual(
            normalize_esdl(
                retrieve_esdl_file(
                    "./test_esdl/output/test__grow_optimizer_no_heat_losses__happy_path.esdl"
                )
            ),
            normalize_esdl(result_handler.result.output_esdl),
        )

    def test__grow_optimizer_with_pressure__happy_path(self) -> None:
        # Arrange
        workflow_manager_ = workflow_manager()
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_optimizer_with_pressure"
        timeout_seconds = 120.0

        # Act
        with omotes_client(workflow_manager_) as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, workflow_manager_, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        self.assertEqual(
            normalize_esdl(
                retrieve_esdl_file(
                    "./test_esdl/output/test__grow_optimizer_with_pressure__happy_path.esdl"
                )
            ),
            normalize_esdl(result_handler.result.output_esdl),
        )

    def test__grow_simulator__happy_path(self) -> None:
        # Arrange
        workflow_manager_ = workflow_manager()
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/optimizer_poc_tutorial.esdl")
        workflow_type = "grow_simulator"
        timeout_seconds = 60.0

        # Act
        with omotes_client(workflow_manager_) as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, workflow_manager_, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        self.assertEqual(
            normalize_esdl(
                retrieve_esdl_file("./test_esdl/output/test__grow_simulator__happy_path.esdl")
            ),
            normalize_esdl(result_handler.result.output_esdl),
        )

    def test__simulator__happy_path(self) -> None:
        # Arrange
        workflow_manager_ = workflow_manager()
        result_handler = OmotesJobHandler()
        esdl_file = retrieve_esdl_file("./test_esdl/input/simulator_tutorial.esdl")
        workflow_type = "simulator"
        timeout_seconds = 60.0

        # Act
        with omotes_client(workflow_manager_) as omotes_client_:
            submit_a_job(
                omotes_client_, esdl_file, workflow_type, workflow_manager_, result_handler
            )
            result_handler.wait_until_result(timeout_seconds)

        # Assert
        self.expect_a_result(result_handler, JobResult.SUCCEEDED)
        self.assertEqual(
            normalize_esdl(
                retrieve_esdl_file("./test_esdl/output/test__simulator__happy_path.esdl")
            ),
            normalize_esdl(result_handler.result.output_esdl),
        )
