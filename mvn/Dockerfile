FROM eclipse-temurin:8-jdk-alpine

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV LANG=C.UTF-8
ENV JAVA_HOME=/opt/java/openjdk

ENV MAVEN_VERSION=3.5.4 \
    USER_HOME_DIR="/root" \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG="$USER_HOME_DIR/.m2"

RUN apk add --no-cache --virtual=.maven-deps curl tar && \
    mkdir -p /usr/share/maven /usr/share/maven/ref && \
    curl -fsSL "https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz" \
    | tar -xzC /usr/share/maven --strip-components=1 && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn && \
    apk del .maven-deps && \
    rm -rf /tmp/* /var/cache/apk/*

WORKDIR /data

COPY settings-docker.xml /usr/share/maven/ref/

CMD ["mvn"]
