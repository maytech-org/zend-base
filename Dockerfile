FROM php:7.1.1-apache

COPY src/ /var/www
WORKDIR /var/www
RUN apt-get update \
 	&& apt-get install -y git zlib1g-dev \
  && docker-php-ext-install zip  \
  && a2enmod rewrite \
 