#!/bin/bash
. scripts/_select_docker_compose.sh
. scripts/_load_dot_env.sh .env

$DOCKER_COMPOSE up -d --wait rabbitmq
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes root ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes_celery
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery root ".*" ".*" ".*"

$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" "${RABBITMQ_OMOTES_USER_PASSWORD}"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" "${RABBITMQ_CELERY_USER_PASSWORD}"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" ".*" ".*" ".*"
