# Docker-McServer
This example project shows how to start a minecraft server inside of a docker container and forward its ports so it is accessible on your local machine. 

## Prerequesits
It needs a working docker installation and internet access.

This project is only tested on Windows 10-64bit.

## Getting started
After cloning this project, start **build.bat**. **!This step only needs to be done once, otherwise your world save gets overwritten!**

After the process finishes, start **run.bat**.

After that, the server should be accessible on your local machine using **localhost:25565** in the Minecraft client. 

### build.bat
Builds the docker image

### run.bat
Starts the docker container

## Changing the server port
You need to change the **SERVER_PORT** variable in the Dockerfile as well as both of the ports in the **run.bat**.
