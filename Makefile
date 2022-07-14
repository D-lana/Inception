YML	= srcs/docker-compose.yml
VOLUME_DB = /home/dlana/data/db
VOLUME_WP = /home/dlana/data/wp

all:
	mkdir -p $(VOLUME_DB)
	mkdir -p $(VOLUME_WP)
	chmod 775 $(YML)
	docker-compose -f $(YML) build
	docker-compose -f $(YML) up -d

up:
	docker-compose -f $(YML) up -d

down:
	docker-compose -f $(YML) down

ps:
	docker-compose -f $(YML) ps

images:
	docker-compose -f $(YML) images

fclean:
	-docker stop $$(docker ps -qa)
	-docker rm -f $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null
	-rm -rf $(VOLUME_DB)
	-rm -rf $(VOLUME_WP)
	-docker system prune -f -a

re: fclean all

re_adminer:
	-docker stop adminer
	-docker rm adminer
	-docker rmi srcs_adminer

re_mariadb:
	-docker stop mariadb
	-docker rm mariadb
	-docker rmi srcs_mariadb
	-rm -rf $(VOLUME_DB)
