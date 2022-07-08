FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && \
	apt-get install -y wget
# apt-get install -y adminer
# 	apt-get install -y php-fpm php-cli php-xml  && \
# 	mkdir -p /var/www/adminer

# RUN mkdir -p /var/www/html/adminer/ && \
# 	wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3.php && \
# 	mv adminer-4.7.3.php /var/www/html/adminer/adminer.php && \
# 	chmod 755 -R /var/www/html/adminer/adminer.php && \
# 	chown -R www-data:www-data /var/www/html/adminer/ 

RUN apt-get install -y adminer && apt-get install -y php-fpm php-cli php-xml

COPY adminer.conf /etc/apache2/conf-available/adminer.conf

RUN a2enconf adminer
# 	service apache2 reload

EXPOSE 8080

# COPY adminer.conf /var/www/html/adminer/

# CMD ["a2enconf", "/var/www/html/adminer/adminer.conf"]
