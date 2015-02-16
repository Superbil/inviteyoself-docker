# Inviteyoself #

This is docker file for [inviteyoself](https://github.com/Superbil/inviteyoself)

# Use way #

This requires a linked postgres Docker container:

``` shell
docker run --name postgres -v /db-volume:/docker-entrypoint-initdb.d -d --env-file ./db-env.list postgres
docker run --name invite --link postgres:pgdb -d --env-file ./slack-env.list invite
```

`db-env.list.sample` and `slack-env.list.sample` is sample env file for postgres and invite.

`db-entrypoint.sh` will use [add-invites-table.up.sql](https://github.com/Superbil/inviteyoself/blob/master/migrations/201409002828-add-invites-table.up.sql) to init table, put it into `db-volume`, that will work just fine.

# License #

Under the [MIT License](http://superbil.mit-license.org/).
