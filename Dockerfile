FROM cmaiorano/nubo-base-alternative:1

MAINTAINER Nubomedia

RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.1.1-SNAPSHOT.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-magic-mirror-6.1.1-SNAPSHOT.zip

EXPOSE 8080 8888

ENTRYPOINT java -Dapp.server.url=https://dl.dropboxusercontent.com/u/19675892 -jar /tmp/magic-mirror/lib/kurento-magic-mirror.jar
#ENTRYPOINT id && groups && ls -lah ~/.kurento