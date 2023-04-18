:: run the docker container
:: the -p argument forwards a port (e.g. 25564) to the local machines port (e.g. 25564)
:: without that, the server isn't accessible
docker run -p 25565:25565 --mount source=docker-mcserver,destination=/minecraft mcdocker
