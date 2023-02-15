FROM postgis/postgis:15-3.3 as postgis
ARG SSL_CRT_FILEPATH
ARG SSL_KEY_FILEPATH

COPY ${SSL_CRT_FILEPATH} /var/lib/postgresql/server.crt
COPY ${SSL_KEY_FILEPATH} /var/lib/postgresql/server.key
RUN chown postgres:postgres /var/lib/postgresql/server.*
RUN chmod 600 /var/lib/postgresql/server.*
