FROM postgres:9.4

COPY app.sql /docker-entrypoint-initdb.d/