FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && \
	apt-get install -y wget && \
	apt install -y zip

RUN	apt-get install -y php php-common php-pear php-mbstring libapache2-mod-php php-mysql

RUN apt-get install -y apache2

RUN mkdir -p /var/www/

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.zip \
	-O /var/www/adminer-4.8.1 && \
	unzip /var/www/adminer-4.8.1

EXPOSE 8080

CMD sleep 20 && /var/www/adminer.php

# FROM debian:buster

# RUN	apt-get update && apt-get upgrade -y && \
# 	apt-get install -y wget

# RUN mkdir -p /var/www/html/wordpress/

# RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php \
# 	-O /var/www/html/wordpress/adminer.php && \
# 	chmod 775 /var/www/html/wordpress/adminer.php

# COPY adminer.conf /etc/apache2/conf-available/adminer.conf

# RUN apt-get install -y apache2 

# RUN a2enconf adminer 

# RUN apt-get install -y systemd

# RUN chmod 775 /etc/apache2/apache2.conf
# RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

# RUN service apache2 restart

# EXPOSE 8080

# CMD sleep 20 && /var/www/html/wordpress/adminer.php
