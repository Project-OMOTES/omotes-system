# CI tasks

# Install dependencies with dev group
install:
    uv sync --locked --group dev

# Run linter checks
lint:
    uv run ruff check system_tests/src/

# Run security checks
security:
    uv run ruff check system_tests/src/ --select=S

# Fix linting issues
format:
    uv run ruff format system_tests/src/

# Check formatting without modifying files
format-check:
    uv run ruff format --check system_tests/src/

# Run type checker
typecheck:
    uv run ty check system_tests/src/

# Spin up an isolated OMOTES stack and run the system tests against it
test:
    ./scripts/test-system.sh

# Publish the custom Caddy image (requires a ghcr.io login with package write access)
publish-caddy version:
    docker build --provenance=false --sbom=false -f caddy/Dockerfile -t ghcr.io/project-omotes/caddy-with-geoip:{{version}} -t ghcr.io/project-omotes/caddy-with-geoip:latest .
    printf 'https://example.test {\n respond "ok"\n}\n' | docker run --rm -i --entrypoint caddy ghcr.io/project-omotes/caddy-with-geoip:{{version}} validate --config /dev/stdin --adapter caddyfile
    docker push ghcr.io/project-omotes/caddy-with-geoip:{{version}}
    docker push ghcr.io/project-omotes/caddy-with-geoip:latest

# Run the system tests against an already-running stack
test-local:
    cd system_tests/src && ../.venv/bin/python -m pytest test_workflows_steps.py -v -s

# Run all CI checks (install, lint, format-check, typecheck, test)
ci: install security lint format-check typecheck test

# Show this help message
help:
    @just --list
