FROM postgres:16

# Ekstensi umum (pg_cron, pg_partman, http, contrib)
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends gnupg lsb-release wget ca-certificates tzdata; \
    wget -qO /usr/share/keyrings/postgresql.gpg https://www.postgresql.org/media/keys/ACCC4CF8.asc; \
    echo "deb [signed-by=/usr/share/keyrings/postgresql.gpg] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
      postgresql-16-cron \
      postgresql-16-partman \
      postgresql-16-http \
      postgresql-contrib; \
    rm -rf /var/lib/apt/lists/*
