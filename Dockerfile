FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

RUN mkdir -p /var/www/developers \
             /var/www/webapp

COPY developers/index.html /var/www/developers/index.html
COPY webapp/index.html /var/www/webapp/index.html

COPY developers.conf /etc/apache2/sites-available/developers.conf
COPY webapp.conf /etc/apache2/sites-available/webapp.conf

RUN a2dissite 000-default.conf && \
    a2ensite developers.conf && \
    a2ensite webapp.conf && \
    a2enmod rewrite

EXPOSE 80

CMD echo "Servidor Apache corriendo..." && apachectl -D FOREGROUND

