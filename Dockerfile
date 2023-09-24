FROM docker.io/library/alpine:latest

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

RUN apk update && apk upgrade --no-cache && apk add samba samba-common-tools samba-server \
    && mkdir /samba && chmod 0777 /samba

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]