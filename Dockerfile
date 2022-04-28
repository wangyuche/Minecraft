FROM openjdk:17.0.2

MAINTAINER Aries
RUN curl https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar -o server.jar
RUN ls -all
ADD run.sh run.sh 
RUN chmod +x /run.sh 
RUN chmod +x /server.jar
EXPOSE 25565 25575
ENTRYPOINT ["/run.sh"]

