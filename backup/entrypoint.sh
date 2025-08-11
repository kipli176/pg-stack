#!/bin/sh
set -eu

# Pastikan izin direktori backup cukup ketat
chmod 700 /backups 2>/dev/null || true

echo "=== Current time zone: ${TZ:-UTC} ==="
date

# Pastikan variabel env penting ada
: "${PGHOST?}"; : "${PGPORT?}"; : "${PGUSER?}"; : "${PGPASSWORD?}"; : "${PGDATABASE?}"

# Export agar dikenali pg_dump
export PGHOST PGPORT PGUSER PGPASSWORD PGDATABASE TZ RETENTION_DAYS

echo "Starting crond..."
exec crond -f -l 8
