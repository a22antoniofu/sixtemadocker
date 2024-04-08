from debian:bookworm-slim
RUN apt update && apt install -y apache2 php php-mysql
COPY index.php /var/www/html/index.php
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
