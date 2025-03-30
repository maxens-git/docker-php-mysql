FROM php:8.4-apache
RUN apt-get update && apt-get install -y libmysqlclient-dev
RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]
