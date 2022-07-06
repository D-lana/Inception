
YML	= srcs/docker-compose.yml
USERNAME = dlana

all:
	mkdir -p /home/${USERNAME}/data/db
	mkdir -p /home/${USERNAME}/data/wp
	chmod 775  $(YML)
	docker-compose -f $(YML) build

# флаг -d --detach - запускает контейнер в фоновом режиме
up:
	docker-compose -f $(YML) up -d

down:
	docker-compose -f $(YML) down

ps:
	docker-compose -f $(YML) ps

images:
	docker-compose - f $(YML) images

fclean:
	-docker stop $$(docker ps -qa)
	-docker rm -f $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null
	-rm -rf /home/${USERNAME}/data/db
	-rm -rf /home/${USERNAME}/data/wp
	-docker system prune -f -a

# du -sch /var/*
