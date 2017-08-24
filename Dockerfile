FROM alpine:latest

MAINTAINER John Eriksson <root@ranbogmord.com>

RUN apk update && apk add certbot bash

EXPOSE 80
EXPOSE 443

ADD runner.sh /etc/letsencrypt/runner.sh

WORKDIR /etc/letsencrypt

CMD ["sh", "/etc/letsencrypt/runner.sh"]

