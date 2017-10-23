# base image
FROM php:5.6-apache

# copy default conf file with diferent publication path
COPY 000-default.conf /etc/apache2/sites-available

# copy composer 
COPY composer.phar /usr/local/bin/composer

# enable rewrite mod
RUN a2enmod rewrite

# update system
RUN apt-get update

# upgrade system 
RUN apt-get upgrade -y

# install libs
RUN apt-get install libxml2-dev libcurl3-dev libfreetype6-dev libjpeg62-turbo-dev git -y 

# install mysql pdo
RUN docker-php-ext-install pdo_mysql

# install dg
RUN docker-php-ext-install gd 

# install soap
RUN docker-php-ext-install soap 

# configure soap
RUN docker-php-ext-configure curl 

# configure gd
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# install xdebug
RUN yes | pecl install xdebug 

# set configuration fo xdebug
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini 
RUN echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini 
RUN echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini
