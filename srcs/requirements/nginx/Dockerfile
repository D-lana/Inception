FROM debian:buster

LABEL maintainer="value"

RUN apt-get update && apt-get install -y nginx openssl

COPY /tools/nginx.conf /etc/nginx/nginx.conf
COPY /tools/default.conf /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST=Russia/L=Moscow/O=wordpress/CN=dlana.42.fr" && \
		chmod 775 /etc/ssl/* && \
		chown -R www-data /var/www/;

RUN	mkdir -p /var/www/my_site/ && chmod 775 /var/www/my_site/

EXPOSE 443
VOLUME [ "/var/www/" ]

ENTRYPOINT nginx -g 'daemon off;'
