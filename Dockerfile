FROM ibmjava:latest

ENV SERVER_START_CMD="java -Xmx2G -Dlog4j2.formatMsgNoLookups=true -jar server.jar nogui"
ENV SERVER_PORT=25565

EXPOSE ${SERVER_PORT}/tcp

RUN mkdir minecraft_temp
WORKDIR /minecraft_temp/
RUN apt-get -y update && apt-get install -y curl

RUN curl -o server.jar https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar

RUN ${SERVER_START_CMD}
RUN sed -i "s/eula=false/eula=true/g" eula.txt
RUN sed -i "s/server-port=25565/server-port=${SERVER_PORT}/g" server.properties

COPY ./install.sh /

CMD /install.sh && cd /minecraft && ${SERVER_START_CMD}
