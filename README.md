# Debug on docker container
1. Step 1
```
docker build -f dockerfile.debug -t docker-debug-aspnetcore .
```
Above command creates image with name "docker-debug-dotnet" using docker file dockerfile.debug. This is optional step. Step 2 indirectly executes the step 1. 


2. Step 2
This step builds the compose file for debugging purpose. 
```
docker-compose -f docker-compose.debug.yml build
```
docker compose file used in creates volume which points the applications output(published) folder. Reason of having this kind of volume is, to avoid creating new image deploying for every code change during development

3. Step 3
Creates and runs the container using the docker compose file created in step 2. 
```
docker-compose -f docker-compose.debug.yml up -d
```
4. Step 4
Now go to debugging tab in visual studio code and select the ".Net core debug on docker launch configuration and hit F5. This will publish the app and run the app in container with debugger attached to the app. 

5. Step 5
To see the output go to browser and type http://localhost:6000. This should give the output from the app and hit the breakpoints if any. 

You can also connect bash in running container using below command. 
```
docker exec -it docker-debug-aspnetcore /bin/bash
```
[Update]
Some usefull links
https://www.freecodecamp.org/news/how-to-debug-dockerized-net-core-apps-in-vs-code/
https://www.cshelton.co.uk/blog/2021/03/12/dotnet-core-docker-dev-environment/
https://github.com/thehaseebahmed/vscode-dotnet-docker-debug
https://github.com/shyamasndr/vscode-dotnet-docker-debug(Fork)


# Deploy production ready app to container. 
1. Step 1
