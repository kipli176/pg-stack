# 1) masuk ke folder
cd stack

# 2) build & start postgres + backup
docker compose up -d --build

# 3) (opsional) GUI pgweb hanya saat perlu
docker compose --profile gui up -d pgweb

# Akses:
# Postgres: localhost:5432 (user admin, pass adminpass, db appdb)
# pgweb (opsional): http://localhost:2081
