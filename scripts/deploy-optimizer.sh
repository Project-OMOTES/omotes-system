#!/usr/bin/env bash
set -e

source "$(dirname "$0")/_parse_start_args.sh"
parse_args "$@"
if [[ -n "$VERSION" && ${#BUILD_ARG[@]} -gt 0 ]]; then
  echo "-v and --dev cannot be combined (--dev always deploys the local version)" >&2
  exit 1
fi

# -v <VERSION> overrides OPTIMIZER_WORKER_VERSION from .env
[[ -n "$VERSION" ]] && export OPTIMIZER_WORKER_VERSION="$VERSION"

docker compose "${COMPOSE_FILES[@]}" up --no-deps omotes-deploy-optimizer "${BUILD_ARG[@]}"
