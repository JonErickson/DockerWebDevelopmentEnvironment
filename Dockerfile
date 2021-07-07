FROM php:7.4-fpm

# PHP libraries
RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
    curl \
    git \
    nano \
    supervisor \
    zip \
    unzip \
    libmcrypt-dev \
    libmagickwand-dev --no-install-recommends \
    libzip-dev \
    libmemcached-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# PHP Extensions
RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install opcache \
    && docker-php-ext-install exif \
    && docker-php-ext-install pcntl \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install gd \
    && docker-php-ext-install zip

# PECL Extensions
RUN pecl install redis-5.3.1 \
    && pecl install memcached-3.1.5 \
    && pecl install mcrypt-1.0.3 \
    && pecl install xdebug

# Enable PHP extensions
RUN docker-php-ext-enable redis memcached mcrypt xdebug