#!/bin/bash

# Run the SQL with explicit variable binding so first-boot init can happen
# directly from docker compose startup, without a separate setup step.
psql -v ON_ERROR_STOP=1 \
  --username "$POSTGRES_USER" \
  --dbname postgres \
  -v PG_DB_TIMESERIES=omotes_timeseries \
  -v PG_DB_PREFECT=prefect_server \
  -v PG_DB_ORCHESTRATOR=omotes_orchestrator \
  -v TIMESERIES_RW_USER_NAME="$TIMESERIES_RW_USER_NAME" \
  -v TIMESERIES_RW_USER_PASSWORD="$TIMESERIES_RW_USER_PASSWORD" \
  -v TIMESERIES_RO_USER_NAME="$TIMESERIES_RO_USER_NAME" \
  -v TIMESERIES_RO_USER_PASSWORD="$TIMESERIES_RO_USER_PASSWORD" \
  -v PREFECT_USER_NAME="$PREFECT_USER_NAME" \
  -v PREFECT_USER_PASSWORD="$PREFECT_USER_PASSWORD" \
  -v ORCHESTRATOR_USER_NAME="$ORCHESTRATOR_USER_NAME" \
  -v ORCHESTRATOR_USER_PASSWORD="$ORCHESTRATOR_USER_PASSWORD" \
  -f /setup/init.sql
