FROM    php:7.2-apache

LABEL   maintainer="Ridvan Baluyos"

COPY    .docker/apache/vhost.conf       /etc/apache2/sites-available/000-default.conf

RUN     docker-php-ext-install opcache \
        && a2enmod rewrite negotiation