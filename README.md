# Computation Engine - NWN
Setup the required infrastructure and database migrations:

Copy `.env-template` to `.env` and fill with the appropriate values.

## Setup infrastructure
```
docker-compose up
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

### Update database
Apply migration(s) to reach the latest revision locally:
```
alembic upgrade head
```
or via:
```
docker-compose up --build postgres_db_upgrade
```

### Create revision
Create database revision (version) from updated nwnsdk sqlalchemy database models:  
- Make sure the database used (probably `dev`) is on the `head` revision
- The database is not automatically upgraded, to do so see above
- Always check the created version `.py` file in the `alembic\versions` directory
```
alembic revision --autogenerate -m "revision message"
```
