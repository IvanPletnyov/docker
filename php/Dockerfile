FROM php:7.3-fpm

MAINTAINER Ivan Pletnyov <felex12345@gmail.com>

COPY fix/mysqldump.sh /usr/local/bin/mysqldump

RUN apt-get update \
    && apt-get install -y \
        procps \
        cron \
        curl \
        wget \
        libpng++-dev \
        libzip-dev \
        libmcrypt-dev \
        libmcrypt4 \
        libcurl3-dev \
        libfreetype6 \
        libjpeg-dev \
        libfreetype6-dev \
        libicu-dev \
        libxslt1-dev \
        unzip \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install sockets \
    && docker-php-ext-install zip \
    && docker-php-ext-install intl \
    && docker-php-ext-install xsl \
    && docker-php-ext-install soap \
    && docker-php-ext-install bcmath \
    && pecl install xdebug \
        && docker-php-ext-enable xdebug \
    && curl -sS https://getcomposer.org/installer | php \
        && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/mysqldump \
        && sed -i -e 's/\r$//' /usr/local/bin/mysqldump

WORKDIR /var/www/magento2
