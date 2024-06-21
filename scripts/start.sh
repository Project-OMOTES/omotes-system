#!/bin/bash

. scripts/_select_docker_compose.sh

$DOCKER_COMPOSE --profile=manual_dev down orchestrator_postgres_db_dev
$DOCKER_COMPOSE --profile=manual_dev up --wait
