FROM prooph/php:7.1-fpm

ENV COMPOSER_HOME /root/composer
ENV COMPOSER_VERSION master

# 更换软件源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
#RUN sed -i 's/dl-cdn.alpinelinux.org/sg.mirrors.aliyuncs.com/g' /etc/apk/repositories

RUN apk update

RUN apk add --no-cache --virtual .persistent-deps \
      libpng \
      libpng-dev \
      jpeg \
      jpeg-dev \
      libwebp \
      libwebp-dev \
      git \
      unzip \
      gmp \
      gmp-dev

RUN docker-php-ext-configure gd --with-gd \
    && docker-php-ext-install \
        gd \
        gmp 

RUN set -xe \
    && docker-php-ext-install \
        zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer config -g repo.packagist composer https://packagist.phpcomposer.com \
    && composer global require hirak/prestissimo

WORKDIR /var/www
