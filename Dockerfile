# docker build -t ssh-socks-proxy .
FROM alpine:3.15
RUN apk add --no-cache \
  openssh-client \
  ca-certificates \
  netcat-openbsd \
  bash

ENV CONFIG="user1@hostname1|user2@hostname2"
COPY scripts/ /

ENTRYPOINT ["/entrypoint"]
