FROM php:8.1-fpm-alpine
WORKDIR /var/www/html
# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apk add --update nodejs npm

#penser a separer les deux dockerfile dans chaque app
COPY composer.json composer.lock ./ 


COPY package.json package-lock.json ./

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-enable pdo_mysql
