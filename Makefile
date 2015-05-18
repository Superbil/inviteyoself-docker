
build:
	docker build -t superbil/inviteyoself .

db:
	docker run --name postgres -d -v $$(pwd)/db-volume:/docker-entrypoint-initdb.d --env-file ./db-env.list postgres

web:
	docker run --name invite --link postgres:pgdb -it -d -p 3000:3000 --env-file ./slack-env.list superbil/inviteyoself

open-web:
	open http://$$(boot2docker ip):3000/

clean-db:
	docker stop postgres
	docker rm postgres

clean-web:
	docker stop invite
	docker rm invite

clean:	clean-db clean-web
