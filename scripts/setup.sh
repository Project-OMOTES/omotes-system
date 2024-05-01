#!/bin/bash

ENV_FILE="./.env"
DOCKER_COMPOSE_FILE="./docker-compose.yml"

./scripts/setup_orchestrator_postgres_db.sh $ENV_FILE $DOCKER_COMPOSE_FILE
./scripts/setup_rabbitmq.sh $ENV_FILE $DOCKER_COMPOSE_FILE
./scripts/setup_influxdb.sh $ENV_FILE $DOCKER_COMPOSE_FILE
