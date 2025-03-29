# Exercise 1
```
$ docker network create my_network

$ docker run -d --name wordpress_db -e MYSQL_ROOT_PASSWORD=pass -e MYSQL_DATABASE=wordpressdb -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=wordpress --expose 3306 --expose 33060 --network my_network -v "db-data:/var/lib/mysql" mysql

$ docker network inspect my_network

$ docker run -d --name wordpress_website -e WORDPRESS_DB_HOST=wordpress_db -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=wordpress -e WORDPRESS_DB_NAME=wordpressdb -v "wp-data:/var/www/html" -p 80:80 --network my_network wordpress
```

# Exercise 2
```
$ docker run -d --name mariadb -e MARIADB_USER=user -e MARIADB_PASSWORD=my_cool_secret -e MARIADB_DATABASE=exmple-database -e MARIADB_ROOT_PASSWORD=my-secret-pw --network my_network  mariadb:latest

$ docker run -it --network my_network --rm mariadb mariadb -hmariadb -uuser -p

```

# Exercise 3
```
docker build . -f ./Dockerfile -t boevboyko/tracker_app

docker login

docker push boevboyko/tracker_app

docker images 

docker run -d -p 80:80 boevboyko/tracker_app 
```

# Exercise 4
```
docker network create taskboard_network

docker network ls

docker run -e ACCEPT_EULA=Y -e MSSQL_SA_PASSWORD=yourStrongPassword12# -p 1433:1433 -v sqldata:/var/opt/mssq --rm --network taskboard_network  --name sqlserver  -d mcr.microsoft.com/mssql/server

docker build . -f ./TaskBoard.WebApp/Dockerfile -t taskboard_app

docker run -p 5000:80 --rm --name web_app --network taskboard_network taskboard_app

doicker network inspect taskboard_network
```

# Exercise 5
```
docker network create react-express

docker network create express-mongo

docker build ./backend -f ./backend/Dockerfile -t backend_image

docker build ./frontend -f ./frontend/Dockerfile -t frontend_image

docker pull mongo

docker run -d --name mongo --network express-mongo -v .\data:/data/db mongo

docker run -d --name backend --network express-mongo --network react-express backend_image

docker run -d --name frontend --network react-express -p 3000:3000 frontend_image

```

# Exercise 6
```
```

# Exercise 7
```
cd result

docker build -t result .

cd volt

docker build -t volt .

cd worker

docker build -t worker .

docker volume create database

docker run -d --name redis --network backend redis

docker run -d --name db  --network backend -v database:/var/lib/postgresql/data -e POSTGRES_PASSOWRD=postgres -e POSTGRES_USER=postgres postgres

docker run -d --name volt --network frontend --network backend -p 5000:80 volt

docker run -d --name result --network frontend --network backend -p 5001:80 result

docker run -d --name worker --network backend worker

docker network inspect backend 

docker network inspect frontend

```

# Exercise 8
```
```

# Exercise 9
```
docker build -t fruitipedia .

docker run -p 8000:8000 fruitipedia
```
```
docker compose up --build
```
