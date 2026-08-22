FROM php:8.2-apache

# Mengaktifkan ekstensi MySQLi dan PDO
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Menyalin seluruh file project ke direktori web server Apache
COPY . /var/www/html/

# Mengatur port agar dinamis mengikuti environment Railway
RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
