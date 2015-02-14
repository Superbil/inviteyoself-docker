#!/bin/bash

echo "jdbc:postgresql://pgdb:5432/$PGDB_ENV_DB_NAME?password=$PGDB_ENV_DB_USER_PASSWORD"
# lein ragtime migrate -d "jdbc:postgresql://pgdb:5432/$PGDB_ENV_DB_NAME?password=$PGDB_ENV_DB_USER_PASSWORD"
