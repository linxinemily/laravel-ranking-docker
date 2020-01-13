FROM laradock/php-fpm:2.6.1-7.4

RUN apt-get install -y libz-dev && \
    pecl install grpc && \
    docker-php-ext-enable grpc

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer \
    && composer config -g repo.packagist composer hppttps://mirrors.aliyun.com/composer/