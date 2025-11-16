FROM wordpress:php8.2-apache

RUN docker-php-ext-install mysqli

COPY wp-config.php /var/www/html/wp-config.php
