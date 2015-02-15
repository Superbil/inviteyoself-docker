
build:
	docker build -t superbil/inviteyoself .

db:
	docker run --name postgres -d --env-file ./db-env.list postgres

web:
	docker run --name invite --link postgres:pgdb -it -d --env-file ./slack-env.list invite

clean-db:
	docker stop postgres
	docker rm postgres

clean-web:
	docker stop invite
	docker rm invite

clean:	clean-db clean-web
