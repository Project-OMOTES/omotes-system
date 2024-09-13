CREATE USER omotes_orchestrator WITH PASSWORD 'somepass3';
ALTER USER omotes_orchestrator WITH PASSWORD 'somepass3';
GRANT ALL PRIVILEGES ON DATABASE omotes_jobs TO omotes_orchestrator;
GRANT ALL PRIVILEGES ON SCHEMA public TO omotes_orchestrator;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO omotes_orchestrator;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO omotes_orchestrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO omotes_orchestrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO omotes_orchestrator;
