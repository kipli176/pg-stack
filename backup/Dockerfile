FROM alpine:3.20

# Klien Postgres + crond + timezone
RUN apk add --no-cache postgresql16-client tzdata busybox-suid

WORKDIR /app
COPY entrypoint.sh /app/entrypoint.sh
COPY crontab /etc/crontabs/root

# Folder backup & izin
RUN mkdir -p /backups && chmod 700 /backups && chmod +x /app/entrypoint.sh

ENV TZ=UTC
VOLUME ["/backups"]

ENTRYPOINT ["/app/entrypoint.sh"]
