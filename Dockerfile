FROM php:8.1-apache

RUN apt-get update; \
    apt-get install -y zip; \
    apt-get install -y unzip; \
    apt-get install -y vim; \
    apt-get install -y ssh; \
    apt-get install -y less; \
	apt-get install -y curl; \
    apt-get install -y git;

RUN docker-php-ext-install pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer