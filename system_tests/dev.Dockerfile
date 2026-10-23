FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && \
	apt-get install -y --only-upgrade ca-certificates && \
	apt-get clean

COPY omotes-system/system_tests/requirements.txt /app/requirements.txt
RUN pip install --upgrade 'pip>=26.2.2' && \
	pip install -r /app/requirements.txt --no-cache-dir

COPY ../omotes-sdk-protocol/python/ /omotes-sdk-protocol/python/
COPY ../omotes-sdk-python/ /omotes-sdk-python/
RUN pip install /omotes-sdk-python/
RUN pip install /omotes-sdk-protocol/python/

COPY omotes-system/system_tests/src/ /app/

CMD ["pytest", "--timeout", "120"]
