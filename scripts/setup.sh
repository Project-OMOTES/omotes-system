#!/bin/bash

ENV_FILE="./.env"
DOCKER_COMPOSE_FILE="./docker-compose.yml"

./scripts/setup_orchestrator_postgres_db.sh ${1} ${2}
./scripts/setup_rabbitmq.sh ${1} ${2}
./scripts/setup_influxdb.sh ${1} ${2}
