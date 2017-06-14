# base image
FROM ubuntu

# initials instructions 
RUN apt-get update && apt-get install -y apache2

# add project
ADD app/ /var/www/html

# realising port 81
EXPOSE 81

# running apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


