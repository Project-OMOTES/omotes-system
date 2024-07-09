import time
import datetime

from omotes_sdk.config import RabbitMQConfig
from omotes_sdk.omotes_interface import (
    OmotesInterface,
    Job,
    JobResult,
    JobProgressUpdate,
    JobStatusUpdate,
)

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
    with open(f"result_{job.id}.esdl", "w") as file:
        file.writelines(result.output_esdl)


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

    workflow_simulator = omotes_if.get_workflow_type_manager().get_workflow_by_name(
        "simulator"
    )

    with open(r"./example_esdl_simulator.esdl", "r") as f:
        input_esdl = f.read()

    omotes_if.submit_job(
        esdl=input_esdl,
        params_dict={
            "timestep_s": 3600,
            "start_time_unix_s": datetime.datetime(2019, 1, 2, 0, 0, 0).timestamp(),
            "end_time_unix_s": datetime.datetime(2019, 1, 2, 3, 0, 0).timestamp(),
        },
        workflow_type=workflow_simulator,
        job_timeout=None,
        callback_on_finished=handle_on_finished,
        callback_on_progress_update=handle_on_progress_update,
        callback_on_status_update=handle_on_status_update,
        auto_disconnect_on_result=True,
    )
    time.sleep(20)
finally:
    omotes_if.stop()
