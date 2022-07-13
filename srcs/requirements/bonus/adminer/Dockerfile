# FROM debian:buster

# RUN	apt-get update && apt-get upgrade -y && \
# 	apt-get install -y wget && \
# 	apt install -y zip

# RUN	apt-get install -y php php-common php-pear php-mbstring libapache2-mod-php php-mysql

# RUN apt-get install -y apache2

# RUN mkdir -p /var/www/

# RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.zip \
# 	-O /var/www/adminer-4.8.1 && \
# 	unzip /var/www/adminer-4.8.1

# RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php \
# 	-O /var/www/adminer.php && \
# 	chmod 775 /var/www/adminer.php

# EXPOSE 8080

# CMD sleep 20 && /var/www/adminer.php

FROM debian:buster

RUN apt-get update

RUN apt-get install wget -y

# RUN mkdir -p /var/www/wordpress/

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O adminer.php

# RUN cp ./adminer.php /var/www/wordpress/
# COPY ./adminer.sh /
RUN mkdir -p /run/php

# HEALTHCHECK --interval=7s --timeout=10s --retries=5 CMD curl -f dlana.42.fr || exit 1

CMD cp ./adminer.php /var/www/wordpress/
# ENTRYPOINT [ "bash", "adminer.sh" ]
# ENTRYPOINT [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ] 
# /usr/sbin/php-fpm7.3 --nodaemonize

# CMD sleep 500