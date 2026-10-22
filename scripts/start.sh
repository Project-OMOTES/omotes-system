#!/usr/bin/env bash
set -e

source "$(dirname "$0")/_parse_start_args.sh"
parse_args "$@"
if [[ -n "$VERSION" ]]; then
  echo "-v is not supported by this script" >&2
  exit 1
fi

docker compose "${COMPOSE_FILES[@]}" up "${BUILD_ARG[@]}" --wait
