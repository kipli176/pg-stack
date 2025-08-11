#!/usr/bin/env bash
set -euo pipefail

# Set cron.database_name ke DB yang didefinisikan env
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<SQL
ALTER DATABASE "$POSTGRES_DB" SET cron.database_name = '$POSTGRES_DB';
SQL
