# nodebb-docker

Docker container for nodebb.

# Building

Build an image called `bumeded/nodebb`.

```
make docker
```

# Run

```
# Start redis
docker run --name redis -d -p 127.0.0.1:6379:6379 redis
# Start nodebb
docker run --name nodebb --link redis:redis -p 127.0.0.1:4567:4567 -it bumped:nodebb
```

Visit http://localhost:4567 to configure nodebb.  **NB:** Be sure to enter `redis` as the redis hostname instead of `127.0.0.1`!
