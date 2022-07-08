# указываем образ
FROM debian:buster

LABEL maintainer="value"

# выполняется во время сборки контейнера
# -y -
RUN	apt-get update && apt-get install mariadb-server -y && rm -rf /var/lib/apt/lists/*; \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mariadb.sh /tmp/

RUN		chmod 755 /tmp/mariadb.sh

VOLUME [ "/var/lib/mysql" ]

EXPOSE 3306

# этой команде присваивается номер процесса №1
ENTRYPOINT bash /tmp/mariadb.sh 
# /usr/bin/mysqld_safe
