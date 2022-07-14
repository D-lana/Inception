FROM debian:buster

RUN	apt-get update && apt-get install redis -y redis && \
	apt-get install -y procps && \
	apt-get install -y php-redis

COPY redis.conf etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "./", "--protected-mode", "no"]