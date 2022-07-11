# переписать!!!
# указываем образ
FROM debian:buster

LABEL maintainer="value"

# выполняется во время сборки контейнера
RUN apt-get update && apt-get install -y nginx openssl && rm -rf /var/lib/apt/lists/*

VOLUME [ "/var/www/" ]

COPY /tools/nginx.conf /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST=Russia/L=Moscow/O=wordpress/CN=dlana.42.fr" && \
		chmod 775 /etc/ssl/* && \
		chown -R www-data /var/www/;

EXPOSE 443

# этой команде присваивается номер процесса №1
ENTRYPOINT nginx -g 'daemon off;'
