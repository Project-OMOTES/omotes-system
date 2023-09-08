# Computation Engine - NWN
Setup the required infrastructure and database migrations.
The infrastructure consists of the following components:
- PostgreSQL database
- RabbitMQ message broker
- Optimization workers

## Setup infrastructure
Copy `.env-template` to `.env` and fill with the appropriate values.  
To start the infrastructure components:
```
./scripts/start.sh
```
To (re)start with postgres database upgrade to the HEAD version:
```
./scripts/start_restart_with_postgres_upgrade.sh
```
To stop the components:
```
./scripts/stop.sh
```

## Database migrations

### Install requirements
(https://alembic.sqlalchemy.org/en/latest/front.html#installation)
```
pip install -r requirements.txt
```
To have a live version of the dbmodels of the `nwnsdk`:
```
pip install -e <rel path to root nwnsdk code directory>
```

### Create revision
Create database revision (version) from updated nwnsdk sqlalchemy database models:  
- Make sure the database is on the `head` revision
- The database is not automatically upgraded, to do so see below
- Always check the created version `.py` file in the `alembic\versions` directory
```
alembic revision --autogenerate -m "revision message"
```

### Update database
Apply migration(s) to reach the latest revision:
```
alembic upgrade head
```
or via (will stop all components, if running):
```
./scripts/postgres_upgrade.sh
```
