## Quickstart: Compose and Rails

This Quickstart guide will show you how to use Docker Compose to set up and run a Rails/PostgreSQL app. Before starting, you’ll need to have Compose installed.

For mor information visit: https://docs.docker.com/compose/rails/









RUN a2ensite /etc/apache2/sites-available/localhost.gestorfox.com.br.conf
RUN ln -s etc/apache2/sites-available/localhost.gestorfox.com.br.conf etc/apache2/sites-enabled/
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt
