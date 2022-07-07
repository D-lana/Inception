# FROM debian:buster

# RUN	apt-get update && apt-get install redis-server -y && \
# 	apt-get install -y php-redis

# COPY redis.conf /usr/local/etc/redis/redis.conf

# EXPOSE 6379

# ENTRYPOINT [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

FROM debian:buster

RUN	apt-get update && apt-get install redis -y redis && \
	apt-get install -y procps && \
	apt-get install -y php-redis

# COPY serv-redis.sh ./
COPY redis.conf etc/redis/redis.conf
# RUN chmod 775 serv-redis.sh /etc/redis/redis.conf
RUN sysctl -w net.core.somaxconn=65535 --allow-root && \
	sysctl vm.overcommit_memory=1 --allow-root

EXPOSE 6379

CMD ["redis-server", "./", "--protected-mode", "no"]