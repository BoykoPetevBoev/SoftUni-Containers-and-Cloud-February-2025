# Images Commands:
These commands are related to building, listing, and removing Docker images.

List all images on your system.
```
docker images
```

Build an image from a Dockerfile.
```
docker build [OPTIONS] PATH | URL | -
``` 

Remove an image.
```
docker rmi IMAGE_ID
```

# Volumes Commands:

List all volumes.
```
docker volume ls
```

Create a new Docker volume.
```
docker volume create VOLUME_NAME
```

Get detailed information about a volume.
```
docker volume inspect VOLUME_NAME
```

Remove a volume.
```
docker volume rm VOLUME_NAME
```

# Containers Commands:

List running containers.
```
docker ps
```

List all containers (including stopped ones).
```
docker ps -a
```

Create and start a container from an image.
```
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```

Stop a running container.
```
docker stop CONTAINER_ID
```

Start a stopped container.
```
docker start CONTAINER_ID
```

Remove a container.
```
docker rm CONTAINER_ID
```

View logs of a container.
```
docker logs CONTAINER_ID
```

Run a command in a running container (e.g., open a bash shell).
```
docker exec -it CONTAINER_ID bash
```

# Exercise 1
```
npx create-react-app@latest react-docker-app

docker pull node:16

docker images

docker run -it -p 3000:3000 -v %cd%:/app -w /app node:16 npm start

docker logs <ID>
```

# Exercise 2
```
docker pull mongo

docker run -p 27017:27017 -v %cd%:/data/db -d -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=mongopass mongo

docker logs <ID>
```

# Exercise 3
```
docker run --name ls-server -p 80:8080 -d lightstreamer:latest

docker logs ls-server

docker stop ls-server
```

# Exercise 4
```
docker run --name ghost-container -p 3001:2368 -d -e NODE_ENV=development ghost:latest

docker logs ghost-container

docker stop ghost-container
```

# Exercise 5
```
docker run --name my-apache-app -p 8080:80 -v %cd%:/usr/local/apache2/htdocs -d httpd:latest

docker stop my-apache-app
```

# Exercise 6
```
docker run -e ACCEPT_EULA=Y -e MSSQL_SA_PASSWORD=yourStrongPassword12# -p 1433:1433 -v sqldata:/var/opt/mssql -d mcr.microsoft.com/mssql/server
```