FROM debian:buster

RUN	apt-get update && apt-get install mariadb-server -y && \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mariadb.sh /tmp/

RUN		chmod 755 /tmp/mariadb.sh

EXPOSE 3306
VOLUME [ "/var/lib/mysql" ]

ENTRYPOINT bash /tmp/mariadb.sh 
