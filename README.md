# SoftUni-Containers-and-Cloud-February-2025

## Containers Commands:

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

Remove all stopped containers.
```
docker container prune
```

View system-wide information (disk usage, containers, images, volumes).
```
docker system df
```

## Images Commands:
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

Remove all unused images (dangling images).
```
docker image prune
```

## Volumes Commands:

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

Remove all unused volumes.
```
docker volume prune
```

## Network Commands

List all Docker networks.
```
docker network ls
```

Create a new network.
```
docker network create NETWORK_NAME
```

Inspect a network.
```
docker network inspect NETWORK_NAME
```

Remove a network.
```
docker network rm NETWORK_NAME
```