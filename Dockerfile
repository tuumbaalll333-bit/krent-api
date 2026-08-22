FROM php:8.2-cli

# Mengaktifkan ekstensi MySQLi dan PDO
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Menyalin seluruh file project ke direktori kerja
COPY . /app
WORKDIR /app

# Menjalankan server PHP dengan menangkap port dinamis dari Railway
CMD php -S 0.0.0.0:${PORT:-8080}
