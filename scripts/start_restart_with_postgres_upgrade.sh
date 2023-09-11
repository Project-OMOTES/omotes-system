#!/bin/bash

docker-compose down
docker-compose --profile postgres-upgrade up --force-recreate -d
