import threading
import time
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

rabbitmq_config = RabbitMQConfig(port=5673, username="omotes", password="somepass1", virtual_host="omotes")
STOP_EVENT = threading.Event()


def handle_on_finished(job: Job, result: JobResult):
    print("--------------Logs:")
    print(result.logs)
    print()
    print("--------------ESDL:")
    print(result.output_esdl)
    print()
    print("--------------ESDL messages:")
    print(result.esdl_messages)
    print("--------------Result")
    print(
        f"Job {job.id} is done (type: {job.workflow_type.workflow_type_name}). "
        f"Status: {result.result_type}, output esdl length: {len(result.output_esdl)}, "
        f"logs length: {len(result.logs)}"
    )
    STOP_EVENT.set()


def handle_on_status_update(job: Job, status_update: JobStatusUpdate):
    print(
        f"Job {job.id} status update (type: {job.workflow_type.workflow_type_name}). "
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

    # with open("example_esdl_optimizer_poc_tutorial.esdl") as open_file:
    #     input_esdl = open_file.read()

    # job = omotes_if.submit_job(
    #     esdl=input_esdl,
    #     job_reference="example_sdk_client.optimizer_cancel",
    #     params_dict={"key1": "value1", "key2": ["just", "a", "list", "with", "an", "integer", 3]},
    #     workflow_type=workflow_optimizer,
    #     job_timeout=timedelta(hours=1),
    #     callback_on_finished=handle_on_finished,
    #     callback_on_progress_update=handle_on_progress_update,
    #     callback_on_status_update=handle_on_status_update,
    #     auto_disconnect_on_result=True,
    # )
    # time.sleep(8)
    # omotes_if.cancel_job(job)

    # omotes_if.delete_time_series_data("be694ac2-b680-4ad2-bffc-53b7cab250e4")
    job = Job(id=uuid.UUID("059437a2-9914-4903-813b-06af42481b9e"), workflow_type=workflow_optimizer)
    omotes_if.delete_job(job)

    # STOP_EVENT.wait()

    # from influxdb import InfluxDBClient
    # influxdb_client = InfluxDBClient(
    #     host="localhost",
    #     port=8096,
    #     database="omotes_timeseries",
    #     username="root",
    #     password="9012",
    # )
    # output_esdl_id = "9535dca4-9cd6-44c7-8ce4-d1634d7da102"
    # stmnt = f'SELECT sum("diskBytes") FROM "_internal".."tsm1_filestore" WHERE "database"=\'{output_esdl_id}\''
    # result = influxdb_client.query(stmnt)
    # print(f"RESULT: {result}")
    # first_key = next(result.get_points())
    # print(f"FK: {first_key}")
    # print(f"SIZE {round(next(result.get_points())['sum'] / 1e6, 3)}")
finally:
    omotes_if.stop()
