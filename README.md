# Computation Engine - NWN
Setup the required infrastructure and database migrations.
The infrastructure consists of the following components:
- RabbitMQ message broker
- Optimization workers

## Setup infrastructure
Copy `.env-template` to `.env` and fill with the appropriate values.  
To setup the infrastructure components (for windows run in `Git Bash`):
```
./scripts/setup.sh
```
To start the infrastructure components:
```
./scripts/start.sh
```
To stop the components:
```
./scripts/stop.sh
```

## Update infrastructure
In order to update the infrastructure, you first stop the current system, setup the new system
and start it. Docker and other tooling will ensure only updated infrastructure components will be
replaced.

```bash
./scripts/stop.sh
./scripts/setup.sh
./scripts/start.sh
```

## Quickstart example
Once the infrastructure is up and running, an example job may be run to check if the infrastructure
is behaving as expected. The example may be found in `example_sdk_client/`. To run it:

```bash
cd example_sdk_client/
python3 -m venv ./.venv/
. ./.venv/bin/activate
pip install -r requirements.txt
python3 example_sdk_client.py
deactivate
```

We expect similar output to:
```bash
Will use log level LogLevel.INFO for logger 'omotes_sdk'
Will use log level LogLevel.INFO for logger 'omotes_sdk_internal'
Will use log level LogLevel.INFO for logger 'aio_pika'
Will use log level LogLevel.INFO for logger 'aiormq'
2024-02-13 17:26:18,959 [asyncio][Thread-1][selector_events.py:54][DEBUG]: Using selector: EpollSelector
2024-02-13 17:26:18,959 [omotes_sdk][Thread-1][broker_interface.py:196][INFO]: Broker interface connecting to localhost:5672 as omotes at omotes
2024-02-13 17:26:18,986 [omotes_sdk][Thread-1][broker_interface.py:159][INFO]: Declaring queue and retrieving the next message to jobs.cc17549b-2d11-4076-904e-bd548b456e57.result
2024-02-13 17:26:18,992 [omotes_sdk][Thread-1][broker_interface.py:141][INFO]: Declaring queue and adding subscription to jobs.cc17549b-2d11-4076-904e-bd548b456e57.progress
2024-02-13 17:26:18,995 [omotes_sdk][Thread-1][broker_interface.py:141][INFO]: Declaring queue and adding subscription to jobs.cc17549b-2d11-4076-904e-bd548b456e57.status
Job cc17549b-2d11-4076-904e-bd548b456e57 progress (type: grow_optimizer). Status: 2
Job cc17549b-2d11-4076-904e-bd548b456e57 progress (type: grow_optimizer). Progress: 0.0, message: Job calculation started
Job cc17549b-2d11-4076-904e-bd548b456e57 progress (type: grow_optimizer). Progress: 1.0, message: Calculation finished.
Job cc17549b-2d11-4076-904e-bd548b456e57 is done (type: grow_optimizer). Status: 0, output esdl length: 79235, logs length: 0
2024-02-13 17:27:19,004 [omotes_sdk][Thread-1][broker_interface.py:218][INFO]: Stopping broker interface
2024-02-13 17:27:19,004 [aio_pika.queue][Thread-1][queue.py:526][INFO]: <RobustQueueIterator: queue='jobs.cc17549b-2d11-4076-904e-bd548b456e57.progress' ctag='ctag1.9dd60c50e8574429ad35c8058bc3ebea'> closing with timeout 5 seconds
2024-02-13 17:27:19,004 [aio_pika.queue][Thread-1][queue.py:526][INFO]: <RobustQueueIterator: queue='jobs.cc17549b-2d11-4076-904e-bd548b456e57.status' ctag='ctag1.66d19448a3354b1292fec482738b9e23'> closing with timeout 5 seconds
2024-02-13 17:27:19,011 [omotes_sdk][Thread-1][broker_interface.py:228][INFO]: Stopped broker interface
```
