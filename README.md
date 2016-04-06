# nodebb-docker

Docker container for [NodeBB](https://github.com/NodeBB/NodeBB).

# Usage

```
# Start redis
docker run --name redis -d -p 127.0.0.1:6379:6379 redis
# Start nodebb
docker run --name nodebb --link redis:redis -p 127.0.0.1:4567:4567 -it blezek/nodebb
```

Visit http://localhost:4567 to configure NodeBB.  **NB:** Be sure to enter `redis` as the redis hostname instead of `127.0.0.1`!
