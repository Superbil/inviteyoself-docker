#!/bin/sh

# This requires a linked redis Docker container:
#    docker run --name postgres -d --env-file ./db-env.list postgres
#    docker run --name invite --link postgres:pgdb -d --env-file ./slack-env.list invite

export DB_HOST=$PGDB_PORT_5432_TCP_ADDR
export DB_PORT=$PGDB_PORT_5432_TCP_PORT
export DB_NAME=$PGDB_ENV_POSTGRES_USER
export DB_USER_NAME=$PGDB_ENV_POSTGRES_USER
export DB_USER_PASSWORD=$PGDB_ENV_POSTGRES_PASSWORD

java -jar /inviteyoself/target/inviteyoself-0.1.0-SNAPSHOT-standalone.jar
