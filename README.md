# bgbilling-docker

```bash
#!/bin/sh

# download compose
docker pull bgbilling/stack-empty && docker run --name tmp-bgbilling-docker -d bgbilling/stack-empty
docker cp tmp-bgbilling-docker:/bgbilling-docker .
docker rm -f tmp-bgbilling-docker

# interactive prefetch
docker pull bgbilling/server:7.2
docker pull bgbilling/activemq
docker pull mysql/mysql-server:5.7

# init swarm
docker swarm init

# deploy stack
docker stack deploy -c ./bgbilling-docker/docker-stack.yml bgbilling

# show logs
docker service logs bgbilling_db --follow & docker service logs bgbilling_server --follow

# remove
#docker stack rm bgbilling
```
