FROM wordpress:php8.2-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli

# Copy wp-config template
COPY wp-config.php /var/www/html/wp-config.php

# Set permissions
RUN chown -R www-data:www-data /var/www/html