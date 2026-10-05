FROM python:3.11-slim

# install uv
COPY --from=ghcr.io/astral-sh/uv:0.8.22 /uv /uvx /bin/

WORKDIR /app
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=omotes-system/uv.lock,target=uv.lock \
    --mount=type=bind,source=omotes-system/pyproject.toml,target=pyproject.toml \
    uv sync --locked --no-dev

# enable running commands without 'uv run'
ENV PATH="/app/.venv/bin:$PATH"

# use local omotes-sdk-python code instead of the pinned release
COPY omotes-sdk-python/ /omotes-sdk-python/
RUN uv pip install --python /app/.venv/bin/python /omotes-sdk-python/

COPY omotes-system/system_tests/src/ /app/

# -n: run tests in parallel, matching OPTIMIZER_FLOW_MAX_CONCURRENT_RUNS so the
# orchestrator/optimizer-worker can actually process that many jobs at once.
CMD ["sh", "-c", "pytest --timeout 400 -n ${OPTIMIZER_FLOW_MAX_CONCURRENT_RUNS:-5}"]
