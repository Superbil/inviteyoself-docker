#!/bin/bash

export DB_HOST=$PGDB_PORT_5432_TCP_ADDR
export DB_PORT=$PGDB_PORT_5432_TCP_PORT
export DB_NAME=$PGDB_ENV_POSTGRES_USER
export DB_USER_NAME=$PGDB_ENV_POSTGRES_USER
export DB_USER_PASSWORD=$PGDB_ENV_POSTGRES_PASSWORD

echo "Build With jdbc:postgresql://$DB_HOST:$DB_PORT/$DB_NAME?user=$DB_USER_NAME&password=$DB_USER_PASSWORD"
lein ragtime migrate -d "jdbc:postgresql://$DB_HOST:$DB_PORT/$DB_NAME?user=$DB_USER_NAME&password=$DB_USER_PASSWORD"