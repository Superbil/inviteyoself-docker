FROM clojure

MAINTAINER Superbil "superbil@gmail.com"

RUN git clone --depth=1 https://github.com/Superbil/inviteyoself.git
WORKDIR inviteyoself

RUN mkdir -p /docker-entrypoint-initdb.d/
COPY db-entrypoint.sh /docker-entrypoint-initdb.d/


EXPOSE 3000
CMD ["lein", "start-production-server"]
