
db:
	docker run --name postgres -d --env-file ./env.list postgres

clean:
	docker stop postgres
	docker rm postgres
