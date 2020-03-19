FROM mysql:5.6.40

WORKDIR /app

COPY dev_allo_ua_unit.sql /docker-entrypoint-initdb.d
COPY dev_allo_ua_unit_additional_setup.sql /docker-entrypoint-initdb.d