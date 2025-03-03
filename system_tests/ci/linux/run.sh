#!/bin/bash

if [[ "$OSTYPE" != "win32" && "$OSTYPE" != "msys" ]]; then
  echo "Activating .venv first."
  . .venv/bin/activate
fi
cd src/

POSTGRES_PORT="6432"  POSTGRES_HOST="localhost" INFLUXDB_HOST="localhost" pytest --timeout 120
