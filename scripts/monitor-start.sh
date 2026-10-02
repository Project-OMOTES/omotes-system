#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

source "$SCRIPT_DIR/_parse_start_args.sh"
parse_args "$@"

if [[ -n "$VERSION" ]]; then
  echo "-v is not supported by this script" >&2
  exit 1
fi
if [[ ${#BUILD_ARG[@]} -gt 0 ]]; then
  echo "--dev is not supported by this script" >&2
  exit 1
fi

DOCKER_SOCKET_GID="$(stat -c '%g' /var/run/docker.sock)" \
  docker compose "${COMPOSE_FILES[@]}" --profile monitoring up -d victoria-metrics telegraf-docker-metrics