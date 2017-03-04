FROM php:7.1.1-apache

RUN apt-get update \
 	&& apt-get install -y git zlib1g-dev \
  && docker-php-ext-install zip  \
  && a2enmod rewrite \
  && curl -sS https://getcomposer.org/installer \
    	| php -- --install-dir=/usr/local/bin --filename=composer