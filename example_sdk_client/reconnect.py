import time
from datetime import timedelta

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)
from omotes_sdk.workflow_type import WorkflowType, WorkflowTypeManager

rabbitmq_config = RabbitMQConfig(username="omotes", password="somepass1", virtual_host="omotes")


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


workflow_optimizer = WorkflowType("grow_optimizer_default", "some descr")


try:
    omotes_if_1 = OmotesInterface(rabbitmq_config, "example_sdk")
    with open("example_esdl_optimizer_poc_tutorial.esdl") as open_file:
        input_esdl = open_file.read()

    omotes_if_1.start()
    submitted_job: Job = omotes_if_1.submit_job(
        esdl=input_esdl,
        params_dict={"key1": "value1", "key2": ["just", "a", "list", "with", "an", "integer", 3]},
        workflow_type=workflow_optimizer,
        job_timeout=timedelta(hours=1),
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    time.sleep(1)  # Wait for the message to be send.
finally:
    omotes_if_1.stop()

print(
    f"Disconnected the Omotes interface from SDK after submitting job {submitted_job.id}. "
    f"Will reconnect soon."
)
print(
    "Any events we are currently missing are queued in RabbitMQ and will be waiting for us when "
    "we reconnect."
)
time.sleep(5)
print("Reconnecting...")

try:
    omotes_if_2 = OmotesInterface(rabbitmq_config, "example_sdk")
    omotes_if_2.start()
    omotes_if_2.connect_to_submitted_job(
        job=Job(id=submitted_job.id, workflow_type=workflow_optimizer),
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    time.sleep(60)
finally:
    omotes_if_2.stop()
