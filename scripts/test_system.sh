#!/bin/bash

./scripts/setup.sh
./scripts/start.sh
cd system_tests
python3 -m venv ./.venv/
. .venv/bin/activate
pytest
