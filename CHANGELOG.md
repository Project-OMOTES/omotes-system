# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [mvp.4.RC2] - 2024-0x-xx

Compatible with Python SDK 3.1.2

This version uses the following models:
- Mesido 0.1.7.0
- simulator-core 0.0.8

### Omotes-system

* 47: Add README.md and ci scripts for system_tests and example_sdk_client providing easy info and
  access to using them locally. Also add Legal considerations in root README.md and alter
  reconnect.py example to fully show reconnect. by @lfse-slafleur
  in https://github.com/Project-OMOTES/omotes-system/pull/68
* 71: Only load .env if it exists on setup.sh and exit with error if any env variables from
  .env-template are missing. by @lfse-slafleur
  in https://github.com/Project-OMOTES/omotes-system/pull/72
* 74: Reference .env.template from _load_dot_env.sh relative to the root of the repository instead
  of relative to current working directory. by @lfse-slafleur
  in https://github.com/Project-OMOTES/omotes-system/pull/75
* 77: Update optimizer worker to 2.0.0 to include mesido 0.1.5.2 which also includes influxdb schema
  changes. by @lfse-slafleur in https://github.com/Project-OMOTES/omotes-system/pull/78
* 66: Workflow definitions are now shared by orchestrator with the SDK and are updated on any
  changes. by @MarkTNO in https://github.com/Project-OMOTES/omotes-system/pull/67
* 92: Update to SDK 3.0.0 and orchestrator 1.0.0 to integrate single job submission queue and
  multi-sdk support for sharing workflow definitions from the orchestrator to any SDK. by
  @lfse-slafleur in https://github.com/Project-OMOTES/omotes-system/pull/93
* 95: Update optimizer worker to 2.0.2 which includes mesido 0.1.7.0. by @lfse-slafleur
  in https://github.com/Project-OMOTES/omotes-system/pull/96
* 99: Set the workflows definitions file via environment variable by @MarkTNO
  in https://github.com/Project-OMOTES/omotes-system/pull/100
* 81: Make RabbitMQ port configurable as env var. by @lfse-slafleur in 
  https://github.com/Project-OMOTES/omotes-system/pull/94
* 98: Make RabbitMQ management port configurable through env var. by @lfse-slafleur in
  https://github.com/Project-OMOTES/omotes-system/pull/102
* 97: Update all usages of SDK to latest one, change orchestrator config by removing any test 
  workers and fixing the parameters expected for simulator workflow. by @lfse-slafleur
  in https://github.com/Project-OMOTES/omotes-system/pull/101
  * This introduces also a delivery limit feature where jobs are retried until the delivery limit
    is reached (can be configured in .env file). This is useful in case of OOM errors and other
    hard crashes of the worker which may keep a job retried indefinitely.
  * This also introduces a cleanup feature where old queues are removed after 48 hours of
    inactivity. After 48 hours, we assume the SDK is not interested in the result of a job anymore.
  * start_time, end_time and timestep parameters are now all submitted with a simulator workflow
    job submission.
