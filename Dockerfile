FROM clojure

MAINTAINER Superbil "superbil@gmail.com"

RUN git clone --depth=1 https://github.com/Superbil/inviteyoself.git
WORKDIR inviteyoself

RUN mkdir -p /docker-entrypoint-initdb.d/
COPY db-entrypoint.sh /docker-entrypoint-initdb.d/

RUN lein deps
EXPOSE 3000

COPY invite-entrypoint.sh /
ENTRYPOINT ["/invite-entrypoint.sh"]
