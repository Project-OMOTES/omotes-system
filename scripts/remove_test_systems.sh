#!/bin/bash
. scripts/_select_docker_compose.sh

export COMPOSE_PROJECT_NAME=omotes_system_tests

$DOCKER_COMPOSE -f docker-compose.yml -f system_tests/docker-compose.override.yml down -v
