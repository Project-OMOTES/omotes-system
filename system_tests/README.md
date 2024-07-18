# OMOTES System Tests

This directory contains a number of tests which test the OMOTES stack/system as a whole. It
requires a running OMOTES stack and it interacts with OMOTES through the python SDK as if it is
any other (frontend) application.

## Running the system tests

In order to run the system tests, first ensure there is an OMOTES stack running. RabbitMQ
should be exposed on localhost:5672 (which it is by default). It also requires the default
login credentials omotes:somepass1 to log into RabbitMQ as an SDK.

```bash
./ci/linux/create_venv.sh # Sets up the dependencies for running the system tests application.
./ci/linux/run.sh         # Runs the system tests. May be repeated.
```

## Running the system tests with local code for all components

Alternatively, the system test can be run with all components using local code. This requires all
omotes repositories to be located in the same parent folder. From the root `omotes-system` folder
run:

```bash
./scripts/test_system_dev.sh
```