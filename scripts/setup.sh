#!/bin/bash
. scripts/_select_docker_compose.sh
. scripts/_load_dot_env.sh

# Build setup images
#$DOCKER_COMPOSE build postgres_db_upgrade

# Turn off current system
$DOCKER_COMPOSE stop

## Upgrade postgres omotes schema
#$DOCKER_COMPOSE up -d --wait postgres_db
#$DOCKER_COMPOSE run --rm postgres_db_upgrade
#$DOCKER_COMPOSE exec postgres_db psql -d ${POSTGRES_DATABASE_NAME} -c 'CREATE DATABASE omotes_celery;'
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "CREATE USER ${POSTGRES_CELERY_USER_NAME} WITH PASSWORD '${POSTGRES_CELERY_USER_PASSWORD}';"
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "ALTER USER ${POSTGRES_CELERY_USER_NAME} WITH PASSWORD '${POSTGRES_CELERY_USER_PASSWORD}';"
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "GRANT ALL PRIVILEGES ON DATABASE omotes_celery TO ${POSTGRES_CELERY_USER_NAME};"
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "GRANT ALL PRIVILEGES ON SCHEMA public TO ${POSTGRES_CELERY_USER_NAME};"
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ${POSTGRES_CELERY_USER_NAME};"
#$DOCKER_COMPOSE exec postgres_db psql -d omotes_celery -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO ${POSTGRES_CELERY_USER_NAME};"

# Setup rabbitmq
$DOCKER_COMPOSE up -d --wait rabbitmq
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes root ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes_celery
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery root ".*" ".*" ".*"

$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes ${RABBITMQ_OMOTES_USER_NAME} ${RABBITMQ_OMOTES_USER_PASSWORD}
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes ${RABBITMQ_OMOTES_USER_NAME} ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes_celery ${RABBITMQ_CELERY_USER_NAME} ${RABBITMQ_CELERY_USER_PASSWORD}
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery ${RABBITMQ_CELERY_USER_NAME} ".*" ".*" ".*"

