FROM ibmjava:latest

ENV SERVER_START_CMD="java -Xmx2G -Dlog4j2.formatMsgNoLookups=true -jar server.jar nogui"
ENV SERVER_PORT=25565

EXPOSE ${SERVER_PORT}/tcp

RUN mkdir minecraft
WORKDIR /minecraft/
RUN apt-get -y update && apt-get install -y curl

RUN curl -o server.jar https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

RUN ${SERVER_START_CMD}
RUN sed -i "s/eula=false/eula=true/g" eula.txt
RUN sed -i "s/server-port=25565/server-port=${SERVER_PORT}/g" server.properties

CMD ${SERVER_START_CMD}
