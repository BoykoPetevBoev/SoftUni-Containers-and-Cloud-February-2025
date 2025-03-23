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