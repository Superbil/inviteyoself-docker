FROM clojure

MAINTAINER Superbil "superbil@gmail.com"

RUN git clone --depth=1 https://github.com/Superbil/inviteyoself.git inviteyoself
WORKDIR inviteyoself

# CMD ["lein", "ring server"]
# CMD ["lein", "send-ivites"]
