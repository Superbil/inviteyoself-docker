
build:
	docker build --force-rm -t inviteyoself .

db:
	docker run --name postgres -d --env-file ./db-env.list postgres

init-db:
	docker run --name inviteyoself --link postgres:pgdb -d --env-file ./slack-env.list
	# lein ragtime migrate -d "jdbc:postgresql://DB_HOST:5432/DB_NAME?user=DB_USER_NAME&password=DB_USER_PASSWORD&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"

clean-db:
	docker stop postgres
	docker rm postgres

clean:	clean-db
