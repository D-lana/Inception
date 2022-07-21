FROM debian:buster

RUN	apt-get update && mkdir -p ./my_site

COPY /tools/* ./my_site/

RUN chown -R www-data ./my_site/index.html && \
	chmod 775 ./my_site/index.html

CMD cp -R my_site /var/www
