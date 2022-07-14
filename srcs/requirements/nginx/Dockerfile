FROM debian:buster

LABEL maintainer="value"

RUN apt-get update && apt-get install -y nginx openssl && rm -rf /var/lib/apt/lists/*

COPY /tools/nginx.conf /etc/nginx/sites-available/default
COPY /tools/my_site.conf /etc/nginx/sites-available/my_site.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST=Russia/L=Moscow/O=wordpress/CN=dlana.42.fr" && \
		chmod 775 /etc/ssl/* && \
		chown -R www-data /var/www/;

EXPOSE 443
VOLUME [ "/var/www/" ]

# RUN ls -s /etc/nginx/sites-available/my_site.conf /etc/nginx/sites-enabled/my_site.conf 

ENTRYPOINT nginx -g 'daemon off;'
