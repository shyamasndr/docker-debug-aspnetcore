
FROM microsoft/aspnetcore:1.1
ARG source=./bin/Debug/netcoreapp1.1/publish
WORKDIR /app
EXPOSE 6000
COPY $source .
ENTRYPOINT dotnet docker-debug-aspnetcore.dll
