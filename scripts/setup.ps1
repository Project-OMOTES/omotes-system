# Set-PSDebug -Trace 2

# load environment variables
get-content .env | foreach {
    if ($_.length -gt 1) {
        $name, $value = $_.split('=')
        Write-Host "Environment var: $name = $value"
        set-content env:\$name $value    
    }
}

# Turn off current system
# docker compose stop

docker compose --profile=manual_dev down orchestrator_postgres_db_dev
docker compose up -d --wait orchestrator_postgres_db
docker compose exec orchestrator_postgres_db psql -d postgres -c 'CREATE DATABASE omotes_jobs;'
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "CREATE USER $env:POSTGRES_ORCHESTRATOR_USER_NAME WITH PASSWORD '$env:POSTGRES_ORCHESTRATOR_USER_PASSWORD';"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER USER $env:POSTGRES_ORCHESTRATOR_USER_NAME WITH PASSWORD '$env:POSTGRES_ORCHESTRATOR_USER_PASSWORD';"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON DATABASE omotes_jobs TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON SCHEMA public TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"
docker compose exec orchestrator_postgres_db psql -d omotes_jobs -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO $env:POSTGRES_ORCHESTRATOR_USER_NAME;"

# # Upgrade omotes tables
docker compose build orchestrator_postgres_db_upgrade
docker compose run --rm orchestrator_postgres_db_upgrade

# Setup rabbitmq
docker compose up -d --wait rabbitmq
docker compose exec rabbitmq rabbitmqctl add_vhost omotes
docker compose exec rabbitmq rabbitmqctl set_permissions --vhost omotes root ".*" ".*" ".*"
docker compose exec rabbitmq rabbitmqctl add_vhost omotes_celery
docker compose exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery root ".*" ".*" ".*"

docker compose exec rabbitmq rabbitmqctl add_user --vhost omotes $env:RABBITMQ_OMOTES_USER_NAME $env:RABBITMQ_OMOTES_USER_PASSWORD
docker compose exec rabbitmq rabbitmqctl set_permissions --vhost omotes $env:RABBITMQ_OMOTES_USER_NAME ".*" ".*" ".*"
docker compose exec rabbitmq rabbitmqctl add_user --vhost omotes_celery $env:RABBITMQ_CELERY_USER_NAME $env:RABBITMQ_CELERY_USER_PASSWORD
docker compose exec rabbitmq rabbitmqctl set_permissions --vhost omotes_celery $env:RABBITMQ_CELERY_USER_NAME ".*" ".*" ".*"

