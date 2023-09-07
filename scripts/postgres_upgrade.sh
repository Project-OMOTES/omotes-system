#!/bin/bash

docker-compose down
docker-compose up postgres_db --force-recreate -d
docker-compose up postgres_db_upgrade --build -d
docker-compose down
