#!/bin/bash
. scripts/_select_docker_compose.sh
. scripts/_load_dot_env.sh .env

# Add influxdb users with write access for optimizer/simulator and with admin rights for the frontend (root admin user via env vars)
$DOCKER_COMPOSE up -d --wait omotes_influxdb
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "CREATE USER ${INFLUXDB_WRITE_USER} WITH PASSWORD '${INFLUXDB_WRITE_USER_PASSWORD}'"
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "GRANT WRITE ON omotes_timeseries TO ${INFLUXDB_WRITE_USER}"
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "SET PASSWORD FOR ${INFLUXDB_WRITE_USER} = '${INFLUXDB_WRITE_USER_PASSWORD}'"
echo "Influxdb user '${INFLUXDB_WRITE_USER}' created/updated."
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "CREATE USER ${INFLUXDB_FRONTEND_ADMIN_USER} WITH PASSWORD '${INFLUXDB_FRONTEND_ADMIN_USER_PASSWORD}' WITH ALL PRIVILEGES"
$DOCKER_COMPOSE exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute "SET PASSWORD FOR ${INFLUXDB_FRONTEND_ADMIN_USER} = '${INFLUXDB_FRONTEND_ADMIN_USER_PASSWORD}'"
echo "Influxdb user '${INFLUXDB_FRONTEND_ADMIN_USER}' created/updated."
