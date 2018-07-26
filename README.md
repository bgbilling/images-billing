# bgbilling-docker

```bash
#!/bin/sh

echo "Downloading bgbilling-stack (compose)..."
docker pull bgbilling/stack-empty && docker run --name tmp-bgbilling-docker -d bgbilling/stack-empty \
  && docker cp tmp-bgbilling-docker:/bgbilling-docker . && docker rm -f tmp-bgbilling-docker

echo "Init Docker Swarm"
docker swarm init

echo "Run BGBillingServer stack"
./bgbilling-docker/init.sh

# remove stack
#docker stack rm bgbilling
```
