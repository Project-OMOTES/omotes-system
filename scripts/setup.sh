#!/bin/bash
. scripts/_select_docker_compose.sh
. scripts/_load_dot_env.sh .env

# Turn off current system
#$DOCKER_COMPOSE stop

# Deploy postgres omotes schema
$DOCKER_COMPOSE --profile=manual_dev down orchestrator_postgres_db_dev
$DOCKER_COMPOSE up -d --wait orchestrator_postgres_db
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d postgres -c 'CREATE DATABASE omotes_jobs;'
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "CREATE USER ${POSTGRES_ORCHESTRATOR_USER_NAME} WITH PASSWORD '${POSTGRES_ORCHESTRATOR_USER_PASSWORD}';"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER USER ${POSTGRES_ORCHESTRATOR_USER_NAME} WITH PASSWORD '${POSTGRES_ORCHESTRATOR_USER_PASSWORD}';"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON DATABASE omotes_jobs TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON SCHEMA public TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"
$DOCKER_COMPOSE exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO ${POSTGRES_ORCHESTRATOR_USER_NAME};"

# Upgrade omotes tables
$DOCKER_COMPOSE build orchestrator_postgres_db_upgrade
$DOCKER_COMPOSE run --rm orchestrator_postgres_db_upgrade

# Setup rabbitmq
$DOCKER_COMPOSE up -d --wait rabbitmq
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes root ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_vhost omotes_celery
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery root ".*" ".*" ".*"

$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" "${RABBITMQ_OMOTES_USER_PASSWORD}"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes "${RABBITMQ_OMOTES_USER_NAME}" ".*" ".*" ".*"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl add_user --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" "${RABBITMQ_CELERY_USER_PASSWORD}"
$DOCKER_COMPOSE exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery "${RABBITMQ_CELERY_USER_NAME}" ".*" ".*" ".*"

# Add influxdb users with write access for optimizer/simulator and with admin rights for the frontend (root admin user via env vars)
$DOCKER_COMPOSE up -d --wait omotes_influxdb
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "CREATE USER ${INFLUXDB_WRITE_USER} WITH PASSWORD '${INFLUXDB_WRITE_USER_PASSWORD}'"
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "GRANT WRITE ON omotes_timeseries TO ${INFLUXDB_WRITE_USER}"
echo "Influxdb user '${INFLUXDB_WRITE_USER}' created."
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "CREATE USER ${INFLUXDB_FRONTEND_ADMIN_USER} WITH PASSWORD '${INFLUXDB_FRONTEND_ADMIN_USER_PASSWORD}' WITH ALL PRIVILEGES"
echo "Influxdb user '${INFLUXDB_FRONTEND_ADMIN_USER}' created."