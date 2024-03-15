import base64
import time
from uuid import UUID

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
from omotes_sdk.workflow_type import WorkflowType

rabbitmq_config = RabbitMQConfig(username="omotes", password="somepass1", virtual_host="omotes")


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

    omotes_if.connect_to_submitted_job(
        job=Job(id=UUID("81b1fec2-60b0-468a-804f-fc06c533fbb2"), workflow_type=WorkflowType("grow_simulator", "some descr")),
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True
    )
    time.sleep(60)
finally:
    omotes_if.stop()
