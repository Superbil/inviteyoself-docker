#!/bin/sh

gosu postgres postgres --single -jE $POSTGRES_USER < /docker-entrypoint-initdb.d/add-invites-table.up.sql
