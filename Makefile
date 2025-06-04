COMPOSE_FILE = srcs/docker-compose.yml

all: up

up: $(COMPOSE_FILE)
	@ sudo docker compose -f $(COMPOSE_FILE) up --build -d
	@ touch up
	@ echo >up Inception succesfully up !

down:
	@ sudo docker compose -f $(COMPOSE_FILE) down
	@ rm -f up

clean:
	@ sudo docker compose -f $(COMPOSE_FILE) down -v --remove-orphans
	@ sudo docker system prune -f --volumes
	@ rm -f up

re: clean all

.PHONY: all down clean re
