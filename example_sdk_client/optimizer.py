import threading
import uuid
from datetime import timedelta

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)

rabbitmq_config = RabbitMQConfig(username="omotes", password="somepass1", virtual_host="omotes")
STOP_EVENT = threading.Event()


def handle_on_finished(job: Job, result: JobResult):
    print("--------------Logs:")
    print(result.logs)
    print()
    print("--------------ESDL:")
    print(result.output_esdl)
    print()
    print("--------------Result")
    print(
        f"Job {job.id} is done (type: {job.workflow_type.workflow_type_name}). "
        f"Status: {result.result_type}, output esdl length: {len(result.output_esdl)}, "
        f"logs length: {len(result.logs)}"
    )
    STOP_EVENT.set()


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
    omotes_if = OmotesInterface(rabbitmq_config, f"example_sdk_{uuid.uuid4()}")
    omotes_if.start()

    workflow_optimizer = omotes_if.get_workflow_type_manager().get_workflow_by_name(
        "grow_optimizer_default"
    )

    with open("example_esdl_optimizer_poc_tutorial.esdl") as open_file:
        input_esdl = open_file.read()

    omotes_if.submit_job(
        esdl=input_esdl,
        job_reference="example_sdk_client.optimizer",
        params_dict={"key1": "value1", "key2": ["just", "a", "list", "with", "an", "integer", 3]},
        workflow_type=workflow_optimizer,
        job_timeout=timedelta(hours=1),
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    STOP_EVENT.wait()
finally:
    print("Closing rabbitmq connection")
    omotes_if.stop()
