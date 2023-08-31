# Computation Engine - NWN
Setup the required infrastructure and database migrations

First copy `.env-template` to `.env.dev` and `.env.prod` and fill with the appropriate values.

## Setup infrastructure
```
docker-compose --env-file .env.dev up
docker-compose --env-file .env.prod up
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
Apply migration(s) to reach the latest revision (for production database replace `dev` with `prod`):
```
alembic --name dev upgrade head
```

### Create revision
Create database revision (version) from updated nwnsdk sqlalchemy database models:  
- Make sure the database used (probably `dev`) is on the `head` revision
- The database is not automatically upgraded, to do so see above
- Always check the created version `.py` file in the `alembic\versions` directory
```
alembic --name dev revision --autogenerate -m "revision message"
```
