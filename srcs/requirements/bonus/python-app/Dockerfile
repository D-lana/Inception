FROM debian:buster

RUN	apt-get update && apt-get install -y python

COPY /tools/my_site.html ./

# COPY /tools/nginx.conf /etc/nginx/sites-available/my_site.conf

# CMD python main.py

CMD sleep 20 && cp my_site.html /var/www/html/my_site
