# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Update and install necessary packages (Apache, PHP, and others)
RUN apt update && apt install -y \
    apache2 \
    php7.4 \
    php7.4-cli \
    php7.4-common \
    php7.4-mbstring \
    php7.4-xml \
    curl \
    && apt clean

# Expose port 80 for HTTP traffic
EXPOSE 80

# Copy the index.php file into the web server's document root
COPY index.php /var/www/html/index.php

# Enable Apache mod_php to handle PHP files
RUN a2enmod php7.4

# Start Apache in the foreground (as the main container process)
CMD ["apachectl", "-D", "FOREGROUND"]
