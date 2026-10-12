# JAVA

Ready-to-use images for Java JDK 8 (Eclipse Temurin) & Maven 3.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/java.svg?style=flat)](https://hub.docker.com/r/dockette/java/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/java.svg?style=flat)](https://hub.docker.com/r/dockette/java/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Usage

All images are based on [Eclipse Temurin](https://adoptium.net/) 8 (the maintained OpenJDK 8 build) on Alpine Linux and are built for `linux/amd64`. The working directory is `/data`.

### JDK 8

> Eclipse Temurin 8 (`eclipse-temurin:8-jdk-alpine`)

Formerly Oracle JDK 8. Oracle JDK can no longer be downloaded anonymously, so this tag now ships Eclipse Temurin 8 (same image as `dockette/openjdk8`).

[![Docker Stars](https://img.shields.io/docker/stars/dockette/jdk8.svg?style=flat)](https://hub.docker.com/r/dockette/jdk8/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/jdk8.svg?style=flat)](https://hub.docker.com/r/dockette/jdk8/)

```
docker run --rm -v /path/to/project:/data dockette/jdk8 java -version
```

### OpenJDK 8

> Eclipse Temurin 8 (`eclipse-temurin:8-jdk-alpine`)

[![Docker Stars](https://img.shields.io/docker/stars/dockette/openjdk8.svg?style=flat)](https://hub.docker.com/r/dockette/openjdk8/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/openjdk8.svg?style=flat)](https://hub.docker.com/r/dockette/openjdk8/)

```
docker run --rm -v /path/to/project:/data dockette/openjdk8 java -version
```

### Maven 3

> Maven 3 on Eclipse Temurin 8 (`maven:3-eclipse-temurin-8-alpine`)

Formerly Maven 3.5.4 on Oracle JDK 8. Ships `settings-docker.xml` in `/usr/share/maven/ref/`. `dockette/mvn` and `dockette/openjdk-mvn` are now the same image.

[![Docker Stars](https://img.shields.io/docker/stars/dockette/mvn.svg?style=flat)](https://hub.docker.com/r/dockette/mvn/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/mvn.svg?style=flat)](https://hub.docker.com/r/dockette/mvn/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/openjdk-mvn.svg?style=flat)](https://hub.docker.com/r/dockette/openjdk-mvn/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/openjdk-mvn.svg?style=flat)](https://hub.docker.com/r/dockette/openjdk-mvn/)

```
docker run --rm -v /path/to/project:/data dockette/mvn mvn package
docker run --rm -v /path/to/project:/data dockette/openjdk-mvn mvn package
```

## Maintenance
See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
