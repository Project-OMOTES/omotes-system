#!/bin/bash
. scripts/_select_docker_compose.sh
. scripts/_load_dot_env.sh .env

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
