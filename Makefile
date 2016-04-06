

docker:
	docker build -t bumped:nodebb nodebb

redis:
	docker run --name redis -d -p 127.0.0.1:6379:6379 redis

test:
	docker run --name nodebb -e url=https://support.bumped.io --link redis:redis -p 127.0.0.1:4000:4567 -it bumped:nodebb

run:
	docker run --name nodebb --link redis:redis -p 127.0.0.1:4000:4567 -it bumped:nodebb

stop:
	docker stop nodebb redis
	docker rm -f nodebb redis


