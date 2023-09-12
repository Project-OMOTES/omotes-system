#!/bin/bash
. scripts/_select_docker_compose.sh
$DOCKER_COMPOSE down
$DOCKER_COMPOSE up -d postgres_db
$DOCKER_COMPOSE build postgres_db_upgrade
$DOCKER_COMPOSE run postgres_db_upgrade
$DOCKER_COMPOSE down
