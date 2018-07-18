# bgbilling-docker

```bash
docker pull bgbilling/stack-empty && docker run --name tmp-bgbilling-docker -d bgbilling/stack-empty
docker cp tmp-bgbilling-docker:/bgbilling-docker .
docker rm -f tmp-bgbilling-docker

docker stack deploy -c ./bgbilling-docker/docker-stack.yml bgbilling
```
