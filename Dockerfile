FROM php:8.2-cli

# Mengaktifkan ekstensi MySQLi dan PDO
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Menyalin seluruh file project ke direktori kerja
COPY . /app
WORKDIR /app

# Menjalankan server bawaan PHP yang langsung berinteraksi dengan port Railway
CMD php -S 0.0.0.0:$PORT
