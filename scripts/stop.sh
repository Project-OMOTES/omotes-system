#!/bin/bash
. scripts/_select_docker_compose.sh

$DOCKER_COMPOSE --profile=manual_dev down
