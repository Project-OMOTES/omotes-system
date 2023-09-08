FROM python:3.11-slim-buster

RUN mkdir /app/
WORKDIR /app

COPY ./requirements.txt ./

# for psycopg2
RUN apt-get update
RUN apt-get -y install libpq-dev gcc

RUN pip install -r requirements.txt

COPY . .

CMD ["alembic", "upgrade", "head"]
