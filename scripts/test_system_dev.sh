#!/bin/bash
. scripts/_select_docker_compose.sh

export COMPOSE_PROJECT_NAME=omotes_system_tests

ENV_FILE=".env.test"
DOCKER_COMPOSE_FILE="./docker-compose.yml -f docker-compose.override.dev.yml -f system_tests/docker-compose.override.yml -f system_tests/docker-compose.override.dev.yml"

cp .env.template ${ENV_FILE}
sed -i 's/LOG_LEVEL=[a-z]*/LOG_LEVEL=WARNING/gi' ${ENV_FILE}

$DOCKER_COMPOSE --env-file ${ENV_FILE} -f $DOCKER_COMPOSE_FILE  down -v
./scripts/setup.sh $ENV_FILE "./docker-compose.yml -f ./docker-compose.override.setup.yml"
$DOCKER_COMPOSE --env-file ${ENV_FILE} -f $DOCKER_COMPOSE_FILE up --build --abort-on-container-exit
