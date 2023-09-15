#!/bin/bash

. scripts/_select_docker_compose.sh
$DOCKER_COMPOSE down
$DOCKER_COMPOSE --profile postgres-upgrade --profile mapeditor-dispatcher up -d
