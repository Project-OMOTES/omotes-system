#!/bin/bash

docker-compose down
docker-compose up -d postgres_db
docker-compose build postgres_db_upgrade
docker-compose run postgres_db_upgrade
docker-compose down
