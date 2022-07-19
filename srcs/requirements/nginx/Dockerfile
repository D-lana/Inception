FROM debian:buster

LABEL maintainer="value"

RUN apt-get update && apt-get install -y nginx openssl

RUN apt-get install -y vim

COPY /tools/nginx.conf /etc/nginx/nginx.conf
COPY /tools/default.conf /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST=Russia/L=Moscow/O=wordpress/CN=dlana.42.fr" && \
		chmod 775 /etc/ssl/* && \
		chown -R www-data /var/www/;

EXPOSE 443
VOLUME [ "/var/www/" ]

# RUN ln -s /etc/nginx/sites-available/my_site.conf /etc/nginx/sites-enabled/my_site.conf 
RUN	mkdir -p /var/www/my_site/ && chmod 775 /var/www/my_site/

# RUN cat /etc/nginx/nginx.conf
# RUN service nginx reload 
# RUN service nginx status

ENTRYPOINT nginx -g 'daemon off;'

# nginx version: nginx/1.14.2
# built with OpenSSL 1.1.1d  10 Sep 2019 (running with OpenSSL 1.1.1n  15 Mar 2022)
