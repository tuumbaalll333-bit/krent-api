FROM php:8.2-apache

# Mengaktifkan ekstensi MySQLi dan PDO
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Memperbaiki error konflik MPM Apache
RUN a2dismod mpm_event mpm_worker && a2enmod mpm_prefork

# Menyalin seluruh file project ke direktori web server Apache
COPY . /var/www/html/

# Memberikan izin akses folder
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Mengonfigurasi port agar sesuai dengan sistem Railway
ENV PORT=80
EXPOSE 80
