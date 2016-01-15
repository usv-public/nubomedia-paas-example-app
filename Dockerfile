FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.1.1-SNAPSHOT.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-magic-mirror-6.1.1-SNAPSHOT.zip
RUN id
RUN ls -lah ~/.kurento
RUN whoami
RUN pwd

EXPOSE 8080 8888

##ENTRYPOINT pwd | java -Dapp.server.url=https://dl.dropboxusercontent.com/u/19675892 -jar /tmp/magic-mirror/lib/kurento-magic-mirror.jar
ENTRYPOINT pwd && id && groups && ls -lah /.kurento && whoami

