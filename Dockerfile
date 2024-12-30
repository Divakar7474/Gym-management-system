# Use an official PHP image as the base
FROM php:8.2-apache

# Install dependencies
RUN docker-php-ext-install mysqli

# Copy application code to the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
