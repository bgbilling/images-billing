#!/bin/sh

echo "Downloading BGBillingServer image"
docker pull bgbilling/server:7.2
docker pull bgbilling/scheduler:7.2
echo "Downloading ActiveMQ image"
docker pull bgbilling/activemq
echo "Downloading MySQL image"
docker pull mysql/mysql-server:5.7

echo "Init Docker Swarm"
docker swarm init

echo "Deploing bgbilling-docker"
docker stack deploy -c ./bgbilling-docker/docker-stack.yml bgbilling

# show logs
timeout 180 docker service logs bgbilling_db --follow & timeout 180 docker service logs bgbilling_server --follow || docker ps

# remove
#docker stack rm bgbilling