# Official Maven image on Eclipse Temurin 8 (replaces hand-installed JDK 8 + Maven 3.5.4,
# whose download sources no longer exist).
FROM maven:3-eclipse-temurin-8-alpine

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

WORKDIR /data

COPY settings-docker.xml /usr/share/maven/ref/

CMD ["mvn"]
