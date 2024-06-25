# Example clients using the SDK
This directory contains a selection of scripts that use the Python SDK with a specific
functionality. It is meant to provide an easy starting point on how to integrate the Python
SDK (or other SDKs) in your own application.

In order to run the examples, it is necessary to setup the Python SDK first. You may
run `./ci/linux/create_venv.sh` to create a virtual environment or just simply
`pip install -r requirements.txt`. Then (activate the virtual environment if necessary and)
run any of the example scripts through python such as `python3 optimizer.py`.

The scripts show case the following functionalities:
- `optimizer.py`: Start an optimization job and wait for the result.
- `optimizer_cancel.py`: Start an optimization job and cancel it after some time.
- `reconnect.py`: Reconnect the SDK after prior submitting a job and stopping the SDK. This
  simulates the case where an application (which integrates the SDK) has to reboot for some reason.
  It then needs to reconnect to any submitted but unfinished jobs to receive the events.
- `simulator.py`: Start a simulation job and wait for the result.
