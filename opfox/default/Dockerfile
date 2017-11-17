# base image
FROM php:5.6-apache

COPY 000-default.conf /etc/apache2/sites-available

COPY composer.phar /usr/local/bin/composer

COPY php.ini /usr/local/etc/php/conf.d

RUN a2enmod rewrite; \
    apt-get update; \
    apt-get upgrade -y; \ 
    apt-get install libxml2-dev libcurl3-dev libfreetype6-dev libjpeg62-turbo-dev git -y; \
    docker-php-ext-install pdo_mysql; \
    docker-php-ext-install mysqli; \
    docker-php-ext-install gd; \
    docker-php-ext-install soap; \
    docker-php-ext-configure curl; \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/; \
    yes | pecl install xdebug; \
    echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini; \
    echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini; \
    echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini
