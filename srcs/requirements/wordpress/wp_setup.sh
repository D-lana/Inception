#!/bin/bash

mkdir -p /run/php

while ! mysql -h mariadb -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "SELECT 'OK' AS status;"; do
    sleep 5
done

if [ ! -f /var/www/wordpress/wp-config.php ]; then
cp -R /usr/src/wordpress /var/www
wp core config --path=/var/www/wordpress --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
wp core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=${WP_NAME} --admin_user=${WP_USER} --admin_password=${WP_PASSWORD} --admin_email=${WP_EMAIL} --skip-email --allow-root
fi

/usr/sbin/php-fpm7.3 --nodaemonize
