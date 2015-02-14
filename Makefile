
build:
	docker build --force-rm -t inviteyoself .

db:
	docker run --name postgres -d --env-file ./db-env.list postgres

init-db:
	docker run --name inviteyoself --link postgres:pgdb -it -d --env-file ./slack-env.list inviteyoself

clean-db:
	docker stop postgres
	docker rm postgres

clean-web:
	docker stop inviteyoself
	docker rm inviteyoself

clean:	clean-db
