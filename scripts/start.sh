#!/bin/bash

. scripts/_select_docker_compose.sh

$DOCKER_COMPOSE --profile=manual_dev --profile=manual_setup down
$DOCKER_COMPOSE --profile mapeditor-dispatcher up -d
