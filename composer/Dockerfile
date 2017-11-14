FROM composer:latest

RUN apk update; \
    apk upgrade; \
    apk add --no-cache --virtual libxslt-dev; \
    docker-php-ext-install xsl
