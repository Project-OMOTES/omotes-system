#!/bin/bash

docker-compose down
docker-compose --profile postgres-upgrade up -d
