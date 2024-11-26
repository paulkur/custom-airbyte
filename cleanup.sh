#!/bin/bash

# Bring down the production environment
sudo docker compose -f docker-compose.yml down --volumes --rmi all

# Bring down the development environment
sudo docker compose -f docker-compose-dev.yml down --volumes --rmi all

# Remove all docker volumes
sudo docker volume rm $(sudo docker volume ls -q)

# Remove all docker containers
sudo docker container prune -f

# Remove all unused networks
sudo docker network prune -f

# Remove all unused images
sudo docker image prune -f

# Remove all docker images, containers and volumes
sudo docker system prune -f

# Remove all docker volumes
sudo docker volume prune -f

# Remove all docker volumes with the system prune
sudo docker system prune --volumes -f
