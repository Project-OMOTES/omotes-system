# Omotes System

## Deploy

Omotes system makes use of prefect for workflow and flow orchestration.

### Config

First create a `.env` file from [.env.template](.env.template), by either copying [.env.template](.env.template) (for
dev) or generate with random passwords:

```
cp .env.template .env
./scripts/generate-env.sh
```

Optionally the template and target paths can be given as arguments: `./scripts/generate-env.sh .env.template .env`.

The most relevant env vars for optimzer/simulator control:

- `WORKFLOW_SETTINGS_FILE`: pointing to the workflow definitions (in the [config](config) folder)
- `OPTIMIZER_WORKER_VERSION`: optimizer-worker version to be deployed
- `SIMULATOR_WORKER_VERSION`: simulator-worker version to be deployed
- `OPTIMIZER_FLOW_MAX_CONCURRENT_RUNS`: maximum of concurrent optimizer runs (non-Gurobi workflows), over all deployed
  optimizer versions
- `OPTIMIZER_GUROBI_MAX_CONCURRENT_RUNS`: maximum of concurrent Gurobi optimizer runs over all deployed versions, set to
  the number of Gurobi licenses (default `1`), see [Gurobi](#gurobi)
- `SIMULATOR_FLOW_MAX_CONCURRENT_RUNS`: maximum of concurrent simulator runs
- `OPTIMIZER_PREFECT_FLOW_TIMEOUT_SECONDS`: maximum duration of an optimizer run
- `SIMULATOR_PREFECT_FLOW_TIMEOUT_SECONDS`: maximum duration of a simulator run
- `PREFECT_DOCKER_WORKER_NETWORKS`: comma-separated Docker network names for flow-run containers (default: `omotes`),
  for example `omotes,shared-network`
- `MINIO_EXTERNAL_URL`: the minio api external url used for the presigned url used in the prefect UI. For instance
  `https://minio-api.test.nwn-design-toolkit.nl/` which points to the minio `9000` port (`9001` is for the UI). It must
  include `http(s)`.

Each workflow in the `WORKFLOW_SETTINGS_FILE` contains `workflow_type_name`,`workflow_type_description_name` and
`prefect_flow_name`. Optional are `workflow_parameters` and `memory_limit` which is for example: `512Mi`, `2Gi`, `750M`
or `1000000`.\
`workflow_parameters` is a dict in jsonforms format, see
[config/workflow_config_example.json](config/workflow_config_example.json) and https://jsonforms.io/.

### Gurobi

The Gurobi workflows (`*_gurobi` in [config/workflow_config_nwn.json](config/workflow_config_nwn.json)) run on the
`omotes-optimizer-gurobi` deployment and need a Gurobi WLS license, stored as a Prefect Secret block. Create it once per
Prefect server (otherwise Gurobi runs fail with `Unable to find block document named gurobi-wls-secret`):

1. Open the Prefect UI (locally http://localhost:4200) and go to **Blocks**.
2. Click **+**, select **Secret** and click **Create**.
3. Set **Block Name** to `gurobi-wls-secret`.
4. Set **Value** to the full content of the WLS license file (`gurobi.lic`, with `WLSACCESSID`, `WLSSECRET` and
   `LICENSEID` lines) and click **Create**.

With the current license only one Gurobi run can be active at a time. Each optimizer deployment runs on its own work
queue, `omotes-optimizer` and `omotes-optimizer-gurobi`, limited by `OPTIMIZER_FLOW_MAX_CONCURRENT_RUNS` and
`OPTIMIZER_GUROBI_MAX_CONCURRENT_RUNS` over all deployed versions. Runs above the limit wait in the queue (state
`Scheduled`/`Late`) without starting a container. The limits are visible in the Prefect UI under **Work Pools** >
`docker-worker` > **Work Queues**, but are reset to the `.env` values on each optimizer deployment.

### Start

Start the omotes system only, or including the deployment of the specified versions of the optimizer and simulator, by:

```
./scripts/start.sh [--dev] [-n <NETWORK_NAME>]
./scripts/start-and-deploy.sh [--dev] [-n <NETWORK_NAME>]
```

#### Monitoring

The same scripts work on a Linux VM or on Windows through Docker Desktop with WSL2 integration. Run them from a Bash
shell (WSL2 on Windows). Ensure `.env` contains `VMUI_USERNAME` and `VMUI_PASSWORD`; `./scripts/generate-env.sh`
creates a new `.env` with random passwords.

Start monitoring; optionally pass `-n` to attach VictoriaMetrics to an existing external Docker network as well as
`omotes`:

```sh
./scripts/monitor-start.sh [-n <NETWORK_NAME>]
```

Open [VMUI](http://localhost:8428/vmui/#/dashboards?g0.range_input=1h&g0.relative_time=last_1_hour). Sign in with the
credentials from `.env`. The dashboards show Docker-container memory and CPU, host memory and CPU, and container
diagnostics. Metrics are retained for one week in the `victoria_metrics_data` volume. Telegraf reads the Docker socket,
so treat it as privileged host access. For public access, use HTTPS; Basic Auth alone does not encrypt traffic.

Stop monitoring without deleting its data:

```sh
./scripts/monitor-stop.sh
```

Pass `-n <NETWORK_NAME>` to also attach influxdb, postgres and the orchestrator to an external docker network with that
name (it must already exist), for example `./scripts/start.sh -n mapeditor-net`. Pass `--dev` to run with local code
instead of published images, see [Start dev](#start-dev).

To seperately deploy a version (`OPTIMIZER/SIMULATOR_WORKER_VERSION` in `.env`) of the optimizer or simulator flow to
prefect. `-v <VERSION>` overrides `OPTIMIZER_WORKER_VERSION`/`SIMULATOR_WORKER_VERSION` from `.env`:

```
./scripts/deploy-optimizer.sh [--dev] [-v <VERSION>]
./scripts/deploy-simulator.sh [--dev] [-v <VERSION>]
```

Multiple versions can be deployed (See `Deployments` in the Prefect UI): run this scripts multiple times with different
values for `OPTIMIZER_WORKER_VERSION`/`SIMULATOR_FLOW_MAX_CONCURRENT_RUNS`. Semantic versions cannot be overwritten.

> **NOTE:** For the NWN MapEditor, deployment of new versions happens via GitHub CI of the optimizer/simulator workers.

And to stop the omotes-system:

```
./scripts/stop.sh
```

### Usage

After startup the prefect UI ([http://localhost:4200/](http://localhost:4200/)), minio UI
([http://localhost:9001/](http://localhost:9001/)) and the orchestrator api
([http://localhost:9200/docs](http://localhost:9200/docs)) are available.\
Start a run by
[http://localhost:9200/docs#/job/create_job_job\_\_post](http://localhost:9200/docs#/job/create_job_job__post) with
[example_runs/optimizer_post.json](example_runs/optimizer_post.json) or
[example_runs/simulator_post.json](example_runs/simulator_post.json). In these posts the version is not specified: the
newest (largest) semantic version will be used.\
The progress can be tracked in the Prefect UI, and result artifacts retrieved after a successful run.

### Update workflow definitions

On system start the workflow definitions in the file specified by `WORKFLOW_SETTINGS_FILE` in `.env` are loaded by the
orchestrator.\
When the system is running the workflow definitions can be updated by a `POST` to the orchestrator api:
[http://localhost:9200/docs#/workflow/upload_workflows_workflow\_\_post](http://localhost:9200/docs#/workflow/upload_workflows_workflow__post).

### Backup

Docker volumes can be backed up with [backup/docker_volumes_backup.sh](backup/docker_volumes_backup.sh), which archives
each configured volume to a `.tar.gz` file (overwriting the previous archive of the same type). Check the
`VOLUMES_TO_BACKUP` list in the script against `docker volume ls` and update it if volume names differ before relying on
it; volumes not found are skipped with a warning, not a failure.

Schedule backup by opening crontab `crontab -e` and add:

```
# Runs every single night at 2:00 AM (Overwrites daily archive)
0 2 * * * /root/omotes-system/backup/docker_volumes_backup.sh daily >> /root/omotes-system/backup/docker_volumes_backup-daily.log 2>&1

# Runs only on Saturdays at 3:00 AM (Overwrites weekly archive)
0 3 * * 6 /root/omotes-system/backup/docker_volumes_backup.sh weekly >> /root/omotes-system/backup/docker_volumes_backup-weekly.log 2>&1
```

To restore a volume from a backup archive, use [backup/docker_volume_restore.sh](backup/docker_volume_restore.sh):

```
backup/docker_volume_restore.sh <path/to/backup_file.tar.gz> <target_volume_name>
```

If the target volume already exists, its current contents are overwritten after confirmation.

## Development

### Tools

This project uses:

- **uv**: Fast Python package manager and resolver. Install via [https://docs.astral.sh/uv/](https://docs.astral.sh/uv/)
- **just**: Command runner for common tasks (similar to Make). Install via
  [https://github.com/casey/just](https://github.com/casey/just)

### Setup

1. Install dependencies:

   ```bash
   uv sync
   ```

2. Create `.env` with `cp .env.template .env`

### Start dev

During development it is useful to be able to run the system directly from code (without published images). The system
can be started with local code for the orchestrator, omotes-sdk-python, simulator-worker, optimizer-worker, and mesido
(not omotes-simulator-core for now). For this all these repo's need to be present locally in the same folder as this
repo. Make sure repo's that you are not editing are also up to date.

```
./scripts/start.sh --dev [-n <NETWORK_NAME>]
./scripts/start-and-deploy.sh --dev [-n <NETWORK_NAME>]
```

And to deploy the optimizer or simulator flow to prefect using local code for omotes-sdk-python and mesido:

```
./scripts/deploy-optimizer.sh --dev [-v <VERSION>]
./scripts/deploy-simulator.sh --dev [-v <VERSION>]
```

### System tests

The system tests can be run, optionally using local code like mentioned above:

```
./scripts/test-system.sh
./scripts/test-system.sh --dev
```

To run tests in debug mode uncomment

```
# Tear down (comment out to leave stack running for inspection or running tests in debug mode)
$DOCKER_COMPOSE down -v
```

in `./scripts/test-system.sh` to leave the test system up. Then go to `Run and Debug` in vscode, select a launch config,
and hit the play icon.

### CI: linting, type checking and running tests

```bash
cd system_tests
just install        # uv sync --locked --group dev
just lint           # ruff check
just format-check   # ruff format --check
just format         # ruff format (fixes in place)
just typecheck      # ty check
just ci             # install, lint, format-check, typecheck
just test           # spin up an isolated stack and run the system tests (./scripts/test-system.sh)
just test-local     # run the tests against an already-running stack, e.g. for local debugging
```

# Licensing & legal considerations

We have opensourced the OMOTES stack under GPLv3. This ensures that the components of OMOTES are not altered and run
closed-source but changes to OMOTES components are required to also be opensourced. However, the GPLv3 license does not
prevent from OMOTES being used in a closed-source, commercial setting. The OMOTES stack is orchestrated by using one of
the OMOTES SDK packages to communicate over the network with OMOTES. As such, the copy-left virality of the GPLv3
license does not apply to any application or system which integrates and uses OMOTES through the SDK packages. Each of
the SDK packages is licensed using a permissive license. This is all done with the goal of ensuring an opensource,
common calculation and model backend which is available to all but allow companies to use OMOTES without legal hurdles.

In case you have any bug fixes or generally-usable extensions, it would be greatly appreciated if you make these changes
available to one of the relevant OMOTES repositories so we can integrate them for all. The licenses, however, do not
require changes to be opensourced to the original OMOTES repositories and it is up to the developer on how to opensource
any changes.
