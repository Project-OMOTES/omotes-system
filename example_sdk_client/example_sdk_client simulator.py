import base64
import time

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
from omotes_sdk.workflow_type import WorkflowType

rabbitmq_config = RabbitMQConfig(
    username="omotes", password="somepass1", virtual_host="omotes"
)


def handle_on_finished(job: Job, result: JobResult):
    print(
        f"Job {job.id} is done (type: {job.workflow_type.workflow_type_name}). "
        f"Status: {result.result_type}, output esdl length: {len(result.output_esdl)}, "
        f"logs length: {len(result.logs)}"
    )


def handle_on_status_update(job: Job, status_update: JobStatusUpdate):
    print(
        f"Job {job.id} progress (type: {job.workflow_type.workflow_type_name}). "
        f"Status: {status_update.status}"
    )


def handle_on_progress_update(job: Job, progress_update: JobProgressUpdate):
    print(
        f"Job {job.id} progress (type: {job.workflow_type.workflow_type_name}). Progress:"
        f" {progress_update.progress}, message: {progress_update.message}"
    )


try:
    omotes_if = OmotesInterface(rabbitmq_config)
    omotes_if.start()
    with open(r"./testdata/test1.esdl", "r") as f:
        input_esdl = f.read()

    omotes_if.submit_job(
        esdl=input_esdl,
        job_config={
            "key1": "value1",
            "key2": ["just", "a", "list", "with", "an", "integer", 3],
        },
        workflow_type=WorkflowType("simulator", "First test run wheee!!!"),
        job_timeout=None,
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    time.sleep(60)
finally:
    omotes_if.stop()
