#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

DOCKER_SOCKET_GID="$(stat -c '%g' /var/run/docker.sock)" \
  docker compose --profile monitoring up -d victoria-metrics telegraf-docker-metrics