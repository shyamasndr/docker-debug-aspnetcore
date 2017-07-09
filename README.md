# docker-debug-aspnetcore
1. Step 1
```
docker build -f dockerfile.debug -t docker-debug-aspnetcore .
```
Above command creates image with name "docker-debug-dotnet" using docker file dockerfile.debug. This is optional step. Step 2 indirectly executes the step 1. 


2. Step 2

docker-compose -f docker-compose.debug.yml build

docker-compose -f docker-compose.debug.yml up -d

docker exec -it docker-debug-aspnetcore /bin/bash