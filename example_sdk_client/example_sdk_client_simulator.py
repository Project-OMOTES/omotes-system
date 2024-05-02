import base64
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


try:
    workflow_simulator = WorkflowType("simulator", "some descr")
    workflow_manager = WorkflowTypeManager([workflow_simulator])

    omotes_if = OmotesInterface(rabbitmq_config, possible_workflows=workflow_manager)
    omotes_if.start()

    input_esdl = """PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnPz4KPGVzZGw6RW5lcmd5U3lzdGVtIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhtbG5zOmVzZGw9Imh0dHA6Ly93d3cudG5vLm5sL2VzZGwiIG5hbWU9IlVudGl0bGVkIEVuZXJneVN5c3RlbSB3aXRoIHJldHVybiBuZXR3b3JrIiBpZD0iZmRiYmY1ZWUtNmU4Ni00YzgyLTk5MjYtNGI1OWRlNDgyMzc4X3dpdGhfcmV0dXJuX25ldHdvcmsiIGRlc2NyaXB0aW9uPSIiIGVzZGxWZXJzaW9uPSJ2MjIwNyIgdmVyc2lvbj0iMSI+CiAgPGVuZXJneVN5c3RlbUluZm9ybWF0aW9uIHhzaTp0eXBlPSJlc2RsOkVuZXJneVN5c3RlbUluZm9ybWF0aW9uIiBpZD0iYzYxNWYxN2UtYzA3Ny00OGM0LThhNzgtNmFlMDVmOGE5MDhmIj4KICAgIDxjYXJyaWVycyB4c2k6dHlwZT0iZXNkbDpDYXJyaWVycyIgaWQ9ImMyNzI1OGIxLWY0ZjYtNGUwOS1hNzdhLWNlNDY2ZGJkODJkMiI+CiAgICAgIDxjYXJyaWVyIHhzaTp0eXBlPSJlc2RsOkhlYXRDb21tb2RpdHkiIGlkPSIwYmQ5Y2IwOC0yZjY5LTRlOTctOGFjOC1iZDg3YjA3ZTQ2NmEiIG5hbWU9IkhlYXRTdXBwbHkiIHN1cHBseVRlbXBlcmF0dXJlPSI4MC4wIi8+CiAgICAgIDxjYXJyaWVyIHhzaTp0eXBlPSJlc2RsOkhlYXRDb21tb2RpdHkiIGlkPSIwYmQ5Y2IwOC0yZjY5LTRlOTctOGFjOC1iZDg3YjA3ZTQ2NmFfcmV0IiByZXR1cm5UZW1wZXJhdHVyZT0iNDAuMCIgbmFtZT0iSGVhdFJldHVybiIvPgogICAgPC9jYXJyaWVycz4KICAgIDxxdWFudGl0eUFuZFVuaXRzIHhzaTp0eXBlPSJlc2RsOlF1YW50aXR5QW5kVW5pdHMiIGlkPSJmNjFhMTc5OS1iZjA0LTQxNmEtYjE1ZS05MzA5NzcyMmFkYTciPgogICAgICA8cXVhbnRpdHlBbmRVbml0IHhzaTp0eXBlPSJlc2RsOlF1YW50aXR5QW5kVW5pdFR5cGUiIGlkPSJlOTQwNWZjOC01ZTU3LTRkZjUtODU4NC00YmFiZWU3Y2RmMWIiIGRlc2NyaXB0aW9uPSJQb3dlciBpbiBNVyIgcGh5c2ljYWxRdWFudGl0eT0iUE9XRVIiIG11bHRpcGxpZXI9Ik1FR0EiIHVuaXQ9IldBVFQiLz4KICAgIDwvcXVhbnRpdHlBbmRVbml0cz4KICA8L2VuZXJneVN5c3RlbUluZm9ybWF0aW9uPgogIDxpbnN0YW5jZSB4c2k6dHlwZT0iZXNkbDpJbnN0YW5jZSIgaWQ9ImEzNTdjYmJlLWYyNzctNDJiMS04NDU2LWNiYmFkYzhjZWIyZSIgbmFtZT0iVW50aXRsZWQgSW5zdGFuY2UiPgogICAgPGFyZWEgeHNpOnR5cGU9ImVzZGw6QXJlYSIgaWQ9ImU0MDAyYzIyLWFiZDUtNDNmNi04MWE4LWU2YjVmOTYwYmZhNSIgbmFtZT0iVW50aXRsZWQgQXJlYSI+CiAgICAgIDxhc3NldCB4c2k6dHlwZT0iZXNkbDpIZWF0aW5nRGVtYW5kIiBuYW1lPSJIZWF0aW5nRGVtYW5kXzQ4ZjMiIGlkPSI0OGYzZTQyNS0yMTQzLTRkY2QtOTEwMS1jN2UyMjU1OWU4MmIiPgogICAgICAgIDxnZW9tZXRyeSB4c2k6dHlwZT0iZXNkbDpQb2ludCIgbG9uPSI0LjYzNzI2MDQzNzAxMTcyIiBsYXQ9IjUyLjE1ODc2OTYyODg2OTA0NSIgQ1JTPSJXR1M4NCIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOkluUG9ydCIgY29ubmVjdGVkVG89IjNmMmRjMDlhLTBjZWUtNDRiZC1hMzM3LWNlYTU1NDYxYTMzNCIgaWQ9ImFmMDkwNGY3LWJhMWYtNGU3OS05MDQwLTcxZTA4MDQxNjAxYiIgY2Fycmllcj0iMGJkOWNiMDgtMmY2OS00ZTk3LThhYzgtYmQ4N2IwN2U0NjZhIiBuYW1lPSJJbiIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOk91dFBvcnQiIGlkPSJlODkwZjY1Zi04MGU3LTQ2ZmEtOGM1Mi01Mzg1MzI0YmY2ODYiIGNvbm5lY3RlZFRvPSI0MjJjYjkyMS0yM2QyLTQ0MTAtOTA3Mi1hYWE1Nzk2YTA2MjAiIGNhcnJpZXI9IjBiZDljYjA4LTJmNjktNGU5Ny04YWM4LWJkODdiMDdlNDY2YV9yZXQiIG5hbWU9Ik91dCI+CiAgICAgICAgICA8cHJvZmlsZSB4c2k6dHlwZT0iZXNkbDpJbmZsdXhEQlByb2ZpbGUiIG11bHRpcGxpZXI9IjEuMCIgc3RhcnREYXRlPSIyMDE5LTAxLTAxVDAwOjAwOjAwLjAwMDAwMCswMDAwIiBmaWx0ZXJzPSIiIGlkPSI2MmQ3ZTJhNC05OTE5LTRmYTItOTBmNC0yOWU4ZjE4ODkxOWYiIG1lYXN1cmVtZW50PSJOaWptZWdlbiIgZGF0YWJhc2U9ImVuZXJneV9wcm9maWxlcyIgaG9zdD0icHJvZmlsZXMud2FybWluZ3VwLmluZm8iIHBvcnQ9IjQ0MyIgZmllbGQ9IldlZXplbmhvZiAoTVcpIiBlbmREYXRlPSIyMDE5LTEyLTMxVDIzOjAwOjAwLjAwMDAwMCswMDAwIj4KICAgICAgICAgICAgPHByb2ZpbGVRdWFudGl0eUFuZFVuaXQgeHNpOnR5cGU9ImVzZGw6UXVhbnRpdHlBbmRVbml0UmVmZXJlbmNlIiByZWZlcmVuY2U9ImU5NDA1ZmM4LTVlNTctNGRmNS04NTg0LTRiYWJlZTdjZGYxYiIvPgogICAgICAgICAgPC9wcm9maWxlPgogICAgICAgIDwvcG9ydD4KICAgICAgPC9hc3NldD4KICAgICAgPGFzc2V0IHhzaTp0eXBlPSJlc2RsOkdlbmVyaWNQcm9kdWNlciIgcG93ZXI9IjUwMDAwMDAuMCIgbmFtZT0iR2VuZXJpY1Byb2R1Y2VyX2NmM2QiIGlkPSJjZjNkNGI1ZS00MzdmLTRjMWItYTdmOS03ZmQ3ZThhMjY5YjQiPgogICAgICAgIDxnZW9tZXRyeSB4c2k6dHlwZT0iZXNkbDpQb2ludCIgbG9uPSI0LjU1ODYzOTUyNjM2NzE4OCIgbGF0PSI1Mi4xNDg4NjkzODM0ODkxMTQiIENSUz0iV0dTODQiLz4KICAgICAgICA8cG9ydCB4c2k6dHlwZT0iZXNkbDpPdXRQb3J0IiBpZD0iMmQ4MThlM2QtOGEzOS00Y2VjLWFmYTAtZjZkYmJmZDUwNjk2IiBjb25uZWN0ZWRUbz0iYTk3OTNhNWUtZGY0Zi00Nzk1LTgwNzktMDE1ZGZhZjU3ZjgyIiBjYXJyaWVyPSIwYmQ5Y2IwOC0yZjY5LTRlOTctOGFjOC1iZDg3YjA3ZTQ2NmEiIG5hbWU9Ik91dCIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOkluUG9ydCIgY29ubmVjdGVkVG89IjkzNWZiNzMzLTlmNzYtNGE4ZC04ODk5LTFhZDg2ODlhNGIxMiIgaWQ9IjljMjU4YjlkLTMxNDktNDcyMC04OTMxLWY0YmVmMTA4MGVjMSIgY2Fycmllcj0iMGJkOWNiMDgtMmY2OS00ZTk3LThhYzgtYmQ4N2IwN2U0NjZhX3JldCIgbmFtZT0iSW4iLz4KICAgICAgPC9hc3NldD4KICAgICAgPGFzc2V0IHhzaTp0eXBlPSJlc2RsOlBpcGUiIHJlbGF0ZWQ9IlBpcGUxX3JldCIgbmFtZT0iUGlwZTEiIGxlbmd0aD0iNjI2Ny4wIiBpZD0iUGlwZTEiIGlubmVyRGlhbWV0ZXI9IjAuNSI+CiAgICAgICAgPGdlb21ldHJ5IHhzaTp0eXBlPSJlc2RsOkxpbmUiIENSUz0iV0dTODQiPgogICAgICAgICAgPHBvaW50IHhzaTp0eXBlPSJlc2RsOlBvaW50IiBsb249IjQuNTU4NjM5NTI2MzY3MTg4IiBsYXQ9IjUyLjE0ODg2OTM4MzQ4OTExNCIvPgogICAgICAgICAgPHBvaW50IHhzaTp0eXBlPSJlc2RsOlBvaW50IiBsb249IjQuNTk0Njg4NDE1NTI3MzQ1IiBsYXQ9IjUyLjE2NzQwNDIxNTE0NTIxIi8+CiAgICAgICAgICA8cG9pbnQgeHNpOnR5cGU9ImVzZGw6UG9pbnQiIGxvbj0iNC42MzcyNjA0MzcwMTE3MiIgbGF0PSI1Mi4xNTg3Njk2Mjg4NjkwNDUiLz4KICAgICAgICA8L2dlb21ldHJ5PgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOkluUG9ydCIgY29ubmVjdGVkVG89IjJkODE4ZTNkLThhMzktNGNlYy1hZmEwLWY2ZGJiZmQ1MDY5NiIgaWQ9ImE5NzkzYTVlLWRmNGYtNDc5NS04MDc5LTAxNWRmYWY1N2Y4MiIgY2Fycmllcj0iMGJkOWNiMDgtMmY2OS00ZTk3LThhYzgtYmQ4N2IwN2U0NjZhIiBuYW1lPSJJbiIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOk91dFBvcnQiIGlkPSIzZjJkYzA5YS0wY2VlLTQ0YmQtYTMzNy1jZWE1NTQ2MWEzMzQiIGNvbm5lY3RlZFRvPSJhZjA5MDRmNy1iYTFmLTRlNzktOTA0MC03MWUwODA0MTYwMWIiIGNhcnJpZXI9IjBiZDljYjA4LTJmNjktNGU5Ny04YWM4LWJkODdiMDdlNDY2YSIgbmFtZT0iT3V0Ii8+CiAgICAgIDwvYXNzZXQ+CiAgICAgIDxhc3NldCB4c2k6dHlwZT0iZXNkbDpQaXBlIiByZWxhdGVkPSJQaXBlMSIgbmFtZT0iUGlwZTFfcmV0IiBpZD0iUGlwZTFfcmV0IiBsZW5ndGg9IjYyNjcuMCIgaW5uZXJEaWFtZXRlcj0iMC41Ij4KICAgICAgICA8Z2VvbWV0cnkgeHNpOnR5cGU9ImVzZGw6TGluZSI+CiAgICAgICAgICA8cG9pbnQgeHNpOnR5cGU9ImVzZGw6UG9pbnQiIGxvbj0iNC42MzY4NTg4OTY4MTMwMTciIGxhdD0iNTIuMTU4ODU5NjI4OTU5MDQiIENSUz0iV0dTODQiLz4KICAgICAgICAgIDxwb2ludCB4c2k6dHlwZT0iZXNkbDpQb2ludCIgbG9uPSI0LjU5NDI5Njk3NTQxNTM3OTUiIGxhdD0iNTIuMTY3NDk0MjE1MjM1MjEiIENSUz0iV0dTODQiLz4KICAgICAgICAgIDxwb2ludCB4c2k6dHlwZT0iZXNkbDpQb2ludCIgbG9uPSI0LjU1ODIyNTcwNTU2ODIzNSIgbGF0PSI1Mi4xNDg5NTkzODM1NzkxMSIgQ1JTPSJXR1M4NCIvPgogICAgICAgIDwvZ2VvbWV0cnk+CiAgICAgICAgPHBvcnQgeHNpOnR5cGU9ImVzZGw6SW5Qb3J0IiBjb25uZWN0ZWRUbz0iZTg5MGY2NWYtODBlNy00NmZhLThjNTItNTM4NTMyNGJmNjg2IiBpZD0iNDIyY2I5MjEtMjNkMi00NDEwLTkwNzItYWFhNTc5NmEwNjIwIiBjYXJyaWVyPSIwYmQ5Y2IwOC0yZjY5LTRlOTctOGFjOC1iZDg3YjA3ZTQ2NmFfcmV0IiBuYW1lPSJJbl9yZXQiLz4KICAgICAgICA8cG9ydCB4c2k6dHlwZT0iZXNkbDpPdXRQb3J0IiBpZD0iOTM1ZmI3MzMtOWY3Ni00YThkLTg4OTktMWFkODY4OWE0YjEyIiBjb25uZWN0ZWRUbz0iOWMyNThiOWQtMzE0OS00NzIwLTg5MzEtZjRiZWYxMDgwZWMxIiBjYXJyaWVyPSIwYmQ5Y2IwOC0yZjY5LTRlOTctOGFjOC1iZDg3YjA3ZTQ2NmFfcmV0IiBuYW1lPSJPdXRfcmV0Ii8+CiAgICAgIDwvYXNzZXQ+CiAgICA8L2FyZWE+CiAgPC9pbnN0YW5jZT4KPC9lc2RsOkVuZXJneVN5c3RlbT4="""

    omotes_if.submit_job(
        esdl=base64.b64decode(input_esdl).decode(),
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
    time.sleep(60)
finally:
    omotes_if.stop()
