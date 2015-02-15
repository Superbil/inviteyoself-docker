FROM clojure

MAINTAINER Superbil "superbil@gmail.com"

RUN git clone --depth=1 https://github.com/Superbil/inviteyoself.git
WORKDIR inviteyoself

RUN mkdir -p /docker-entrypoint-initdb.d/
COPY db-entrypoint.sh /docker-entrypoint-initdb.d/

ENV DB_HOST $PGDB_PORT_5432_TCP_ADDR
ENV DB_PORT $PGDB_PORT_5432_TCP_PORT
ENV DB_NAME $PGDB_ENV_POSTGRES_USER
ENV DB_USER_NAME $PGDB_ENV_POSTGRES_USER
ENV DB_USER_PASSWORD $PGDB_ENV_POSTGRES_PASSWORD

EXPOSE 3000
CMD ["lein", "start-production-server"]
