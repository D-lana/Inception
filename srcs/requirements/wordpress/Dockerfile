FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml mariadb-client

RUN apt-get update -y && \
    apt-get install -y wget && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    apt-get remove -y wget

RUN wp core download --path=/usr/src/wordpress --allow-root

COPY /tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY /tools/wp_setup.sh /tmp/
COPY /tools/wp-config.php /usr/src/wordpress

RUN	chmod 775 /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000
VOLUME [ "/var/www/" ]

ENTRYPOINT bash /tmp/wp_setup.sh
