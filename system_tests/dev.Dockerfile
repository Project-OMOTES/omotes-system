FROM python:3.11-slim

WORKDIR /app

COPY omotes-system/system_tests/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt --no-cache-dir

COPY ../omotes-sdk-protocol/python/ /omotes-sdk-protocol/python/
COPY ../omotes-sdk-python/ /omotes-sdk-python/
RUN pip install /omotes-sdk-python/
RUN pip install /omotes-sdk-protocol/python/

COPY omotes-system/system_tests/src/ /app/

CMD ["pytest", "--timeout", "120"]
