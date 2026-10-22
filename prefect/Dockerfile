FROM prefecthq/prefect:3.9.0-python3.11

RUN apt-get update \
    && apt-get install -y --only-upgrade ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ADD --checksum=sha256:fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70 \
    https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl \
    /tmp/pip-26.2.2-py3-none-any.whl

RUN python -m pip install --no-index --no-deps /tmp/pip-26.2.2-py3-none-any.whl \
    && rm /tmp/pip-26.2.2-py3-none-any.whl

COPY --from=ghcr.io/astral-sh/uv:0.13.4 /uv /uvx /usr/local/bin/

RUN uv pip install --system "certifi==2026.10.19" "prefect==3.9.0" "prefect-docker==0.7.4"