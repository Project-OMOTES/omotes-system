#!/bin/bash

docker compose -f docker-compose.yml down orchestrator_postgres_db
docker compose -f docker-compose.yml up --wait orchestrator_postgres_db_dev
