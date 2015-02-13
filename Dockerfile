FROM clojure

MAINTAINER Superbil "superbil@gmail.com"

RUN git clone --depth=1 https://github.com/Superbil/inviteyoself.git inviteyoself
WORKDIR inviteyoself

RUN lein ragtime migrate -d "jdbc:postgresql://DB_HOST:5432/DB_NAME?user=DB_USER_NAME&password=DB_USER_PASSWORD&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"

# CMD ["lein", "ring server"]
# CMD ["lein", "send-ivites"]
