# Parses "--dev", "-n <NETWORK_NAME>" and "-v <VERSION>" shared by the start/deploy scripts, in any order.
# Sets COMPOSE_FILES, BUILD_ARG and VERSION. Errors on any other argument.
# Usage: parse_args "$@"
parse_args() {
  COMPOSE_FILES=(-f docker-compose.yml)
  BUILD_ARG=()
  VERSION=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --dev)
        COMPOSE_FILES+=(-f docker-compose.override.dev.yml)
        BUILD_ARG=(--build)
        shift
        ;;
      -n)
        [[ -n "${2:-}" ]] || { echo "-n requires a network name" >&2; exit 1; }
        COMPOSE_FILES+=(-f docker-compose.override.external-network.yml)
        export EXTERNAL_NETWORK="$2"
        shift 2
        ;;
      -v)
        [[ -n "${2:-}" ]] || { echo "-v requires a version" >&2; exit 1; }
        VERSION="$2"
        shift 2
        ;;
      *)
        echo "Unknown argument: $1" >&2
        exit 1
        ;;
    esac
  done
}


