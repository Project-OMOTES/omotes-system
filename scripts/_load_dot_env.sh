#!/bin/bash

echo "Using .env file at ${1}"
set -a
source $1
set +a
