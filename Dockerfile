FROM laradock/php-fpm:2.6.1-7.4

RUN apt-get install -y libz-dev && \
    pecl install grpc && \
    docker-php-ext-enable grpc