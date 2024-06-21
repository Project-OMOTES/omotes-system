import time

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
    AvailableWorkflows,
)
from omotes_sdk.workflow_type import WorkflowType, WorkflowTypeManager

rabbitmq_config = RabbitMQConfig(
    username="omotes", password="somepass1", virtual_host="omotes"
)


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


def handle_on_available_workflows_update(
    available_workflows_pb: AvailableWorkflows,
) -> None:
    """When the available workflows are updated.

    :param available_workflows_pb: AvailableWorkflows protobuf message.
    """
    workflow_type_manager = WorkflowTypeManager.from_pb_message(available_workflows_pb)
    print(f"workflow_type_manager updated: {workflow_type_manager.to_dict()}")


try:
    workflow_optimizer = WorkflowType("grow_optimizer_default", "some descr")

    omotes_if = OmotesInterface(
        rabbitmq_config,
        callback_on_available_workflows_update=handle_on_available_workflows_update,
    )

    omotes_if.start()

    with open('example_esdl_optimizer_poc_tutorial.esdl') as open_file:
        input_esdl = open_file.read()

    omotes_if.submit_job(
        esdl=input_esdl,
        params_dict={"key1": "value1", "key2": ["just", "a", "list", "with", "an", "integer", 3]},
        workflow_type=workflow_optimizer,
        job_timeout=None,
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    time.sleep(3)
finally:
    print("Closing rabbitmq connection")
    omotes_if.stop()
