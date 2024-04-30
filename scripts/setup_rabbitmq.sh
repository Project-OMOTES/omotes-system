#!/bin/bash
. "$(dirname "$0")"/_select_docker_compose.sh
. "$(dirname "$0")"/_load_dot_env.sh $1

$DOCKER_COMPOSE -f ${2} up -d --wait rabbitmq

DOCKER_EXEC="$DOCKER_COMPOSE -f ${2} exec rabbitmq rabbitmqctl"
${DOCKER_EXEC} add_vhost omotes
${DOCKER_EXEC} set_permissions --vhost omotes root ".*" ".*" ".*"
${DOCKER_EXEC} add_vhost omotes_celery
${DOCKER_EXEC} set_permissions --vhost omotes_celery root ".*" ".*" ".*"

${DOCKER_EXEC} add_user --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" "${RABBITMQ_OMOTES_USER_PASSWORD}"
${DOCKER_EXEC} set_permissions --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" ".*" ".*" ".*"
${DOCKER_EXEC} add_user --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" "${RABBITMQ_CELERY_USER_PASSWORD}"
${DOCKER_EXEC} set_permissions --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" ".*" ".*" ".*"
