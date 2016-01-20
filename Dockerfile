FROM nubomedia/apps-baseimage:v1

MAINTAINER NUBOMEDIA

RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.2.1.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-magic-mirror-6.2.1.zip

EXPOSE 8080

ENTRYPOINT java -Dapp.server.url=http://repository.nubomedia.eu/apps/files/kurento-tutorial-java/kurento-magic-mirror/src/main/resources/static/ -jar /tmp/magic-mirror/lib/kurento-magic-mirror.jar
