FROM debian:buster

RUN apt-get update && apt-get install wget -y

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O adminer.php

CMD cp ./adminer.php /var/www/wordpress/
