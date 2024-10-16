#!/bin/bash

ENV_FILE="./.env"
DOCKER_COMPOSE_FILE="-f ./docker-compose.yml -f ./docker-compose.override.setup.yml"

. "$(dirname "$0")"/_select_docker_compose.sh
. "$(dirname "$0")"/_load_dot_env.sh $ENV_FILE

echo "Using docker compose file at: $DOCKER_COMPOSE_FILE"

# stop system
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE --env-file $ENV_FILE --profile=manual_dev down

# add postgres user with privileges
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE --env-file $ENV_FILE up --wait orchestrator_postgres_db
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE exec orchestrator_postgres_db psql \
  -d postgres \
  -v PG_USERNAME="$POSTGRES_ORCHESTRATOR_USER_NAME" \
  -v PG_PASSWORD="$POSTGRES_ORCHESTRATOR_USER_PASSWORD" \
  -v PG_DB=postgres \
  -f /setup/init.sql

# add rabbitmq 'omotes' and 'celery' vhosts and users
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE up --wait rabbitmq
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE exec rabbitmq /bin/sh -c "./setup/rabbitmq-init.sh"

# add influxdb users with write access for optimizer/simulator and with admin rights
# for the frontend (root admin user via env vars)
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE up --wait omotes_influxdb
$DOCKER_COMPOSE $DOCKER_COMPOSE_FILE exec omotes_influxdb /bin/sh -c "./setup/influxdb-init.sh"
