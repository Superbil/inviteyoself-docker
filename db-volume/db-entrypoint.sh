#!/bin/sh

if [ ! -f /docker-entrypoint-initdb.d/add-invites-table.up.sql ]; then
    echo "add-invites-table.up.sql isn't existed"
    exit 1
fi

gosu postgres postgres --single -jE $POSTGRES_USER < /docker-entrypoint-initdb.d/add-invites-table.up.sql
