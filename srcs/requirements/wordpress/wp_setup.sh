#!/bin/bash

mkdir -p /run/php

while ! mysql -h mariadb -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "SELECT 'OK' AS status;"; do
    sleep 5
done

if [ ! -f /var/www/wordpress/wp-config.php ]; then
cp -R /usr/src/wordpress /var/www
# wp core config --path=/var/www/wordpress --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
wp core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=${WP_NAME} \
--admin_user=${WP_USER} --admin_password=${WP_PASSWORD} --admin_email=${WP_EMAIL} \
--skip-email --allow-root

fi

# systemctl start redis.service
# systemctl enable redis.service
# wp plugin install redis-cache --path=/var/www/html/wordpress --activate --allow-root
wp plugin install redis-cache --path=/var/www/wordpress --allow-root
wp plugin activate redis-cache --path=/var/www/wordpress --allow-root
wp redis enable --force --path=/var/www/wordpress --allow-root

/usr/sbin/php-fpm7.3 --nodaemonize


#!/bin/bash
# mkdir -p /run/php
# mkdir -p var/www
# mkdir -p var/www/html/

# while ! mysql -h mariadb -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "SELECT 'OK' AS status;"; do
#     sleep 5
# done

# if [ ! -f /var/www/wordpress/wp-config.php ]; then
# cp -R usr/src/wordpress /var/www/
# cp ./wp-config.php /var/www/wordpress/wp-config.php
# wp core config --path=/var/www/wordpress --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
# wp core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=${WP_NAME} --admin_user=${WP_USER} \
# --admin_password=${WP_PASSWORD} --admin_email=${WP_EMAIL} --skip-email --allow-root
# wp config set WP_REDIS_PATH --raw "__DIR__ . '/../redis.sock'" --allow-root && \
# wp config set WP_REDIS_SCHEME "unix" --allow-root && \
# wp config set WP_REDIS_PORT "6379"
# # wp config set WP_CACHE_KEY_SALT "dlana.42.fr"
# wp plugin install redis-cache --activate --allow-root
# fi

# wp redis enable --force --path=/var/www/wordpress --allow-root

# /usr/sbin/php-fpm7.3 --nodaemonize