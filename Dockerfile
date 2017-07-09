
FROM microsoft/aspnetcore:1.1
LABEL Name=docker-debug-aspnetcore Version=0.0.1 
ARG source=.
WORKDIR /app
EXPOSE 5000
COPY $source .
ENTRYPOINT dotnet docker-debug-aspnetcore.dll
