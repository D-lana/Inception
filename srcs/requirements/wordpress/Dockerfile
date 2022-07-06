FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml mariadb-client && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update -y && \
    apt-get install -y wget && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    apt remove -y wget && \
    rm -rf /var/lib/apt/lists/*

RUN wp core download --path=/usr/src/wordpress --allow-root

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY wp_setup.sh /tmp/

RUN	chmod 775 /etc/php/7.3/fpm/pool.d/www.conf


VOLUME [ "/var/www/" ]

EXPOSE 9000

ENTRYPOINT bash /tmp/wp_setup.sh