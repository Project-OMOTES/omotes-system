# Omotes System

Setup the required infrastructure and database migrations.
The infrastructure consists of the following components:

- RabbitMQ message broker
- Optimization workers

## Setup infrastructure

Copy `.env.template` to `.env` and fill with the appropriate values.

### Workflow configuration

The available workflows are configured via a json file, for an example
see: `/config/workflow_config_example.json`  
A workflow must have a `workflow_type_name` and `workflow_type_description_name`.
The `workflow_parameters` are optional, for workflows that need additional information next to the
ESDL.
Each workflow parameter must have a `parameter_type` and `key_name`, all others are optional.  
See `config/workflow_config_example.json` for options for
the `string`, `boolean`, `integer`, `float` and `datetime` parameter formats.

Set the environment variable `WORKFLOW_SETTINGS_FILE` to the file to be used by the orchestrator,
which will pass the workflows definitions to the sdk.

### Start infrastructure

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

#### Run in dev mode

Alternatively the components can be run using local code. This requires all omotes repositories to
be located in the same parent folder. This setup will also expose the postgres database:

```
./scripts/start-dev.sh
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
python3 optimizer.py
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

# Licensing & legal considerations

We have opensourced the OMOTES stack under GPLv3. This ensures that the components of OMOTES are not
altered and run closed-source but changes to OMOTES components are required to also be opensourced.
However, the GPLv3 license does not prevent from OMOTES being used in a closed-source, commercial
setting. The OMOTES stack is orchestrated by using one of the OMOTES SDK packages to communicate
over the network with OMOTES. As such, the copy-left virality of the GPLv3 license does not apply
to any application or system which integrates and uses OMOTES through the SDK packages. Each of the
SDK packages is licensed using a permissive license. This is all done with the goal of ensuring an
opensource, common calculation and model backend which is available to all but allow companies to
use OMOTES without legal hurdles.

In case you have any bug fixes or generally-usable extensions, it would be greatly appreciated
if you make these changes available to one of the relevant OMOTES repositories so we can integrate
them for all. The licenses, however, do not require changes to be opensourced to the original
OMOTES repositories and it is up to the developer on how to opensource any changes.
