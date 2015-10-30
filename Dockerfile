FROM cmaiorano/nubo-base-image:1

MAINTAINER Nubomedia


ENV VNFR_ID 639a17a0-05ae-4b1b-af36-7caa0d8c77fb
RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.1.1-SNAPSHOT.zip /tmp/magic-mirror/
RUN cd /tmp/magic-mirror/ && unzip kurento-magic-mirror-6.1.1-SNAPSHOT.zip

ENTRYPOINT java -Dapp.server.url=https://dl.dropboxusercontent.com/u/19675892 -jar /tmp/magic-mirror/lib/kurento-magic-mirror.jar

