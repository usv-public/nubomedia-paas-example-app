FROM nubomedia/apps-baseimage:v1

MAINTAINER NUBOMEDIA

RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.2.2-SNAPSHOT.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-magic-mirror-6.2.2-SNAPSHOT.zip
ADD keystore.jks /tmp/
RUM cp /tmp/keystore.jks /tmp/magic-mirror/lib/
RUM cp /tmp/keystore.jks /tmp/magic-mirror/
RUN chmod 777 /tmp/magic-mirror/lib/keystore.jks
RUN chmod 777 /tmp/magic-mirror/keystore.jks
RUN ls -la /tmp/magic-mirror/

EXPOSE 8080

ENTRYPOINT java -Dapp.server.url=http://repository.nubomedia.eu/apps/files/kurento-tutorial-java/kurento-magic-mirror/src/main/resources/static/ -jar /tmp/magic-mirror/lib/kurento-magic-mirror.jar
