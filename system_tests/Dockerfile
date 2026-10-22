FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && \
	apt-get install -y --only-upgrade ca-certificates && \
	apt-get clean

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade 'pip>=26.2.2' && \
	pip install -r /app/requirements.txt --no-cache-dir

COPY src/ /app/

CMD ["pytest", "--timeout", "120"]
