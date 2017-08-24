FROM alpine:latest

MAINTAINER John Eriksson <root@ranbogmord.com>

RUN apk update && apk add certbot bash

EXPOSE 80
EXPOSE 443

ADD runner.sh /runner.sh

WORKDIR /etc/letsencrypt

CMD ["bash", "/runner.sh"]

