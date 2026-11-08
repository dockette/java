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

Formerly Oracle JDK 8. Oracle JDK can no longer be downloaded anonymously, so this tag now ships Eclipse Temurin 8 (same image as `openjdk8`).

```
docker run --rm \
    -v /path/to/project:/data \
    dockette/java:jdk8 \
    java -version
```

### OpenJDK 8

> Eclipse Temurin 8 (`eclipse-temurin:8-jdk-alpine`)

```
docker run --rm \
    -v /path/to/project:/data \
    dockette/java:openjdk8 \
    java -version
```

### Maven 3

> Maven 3 on Eclipse Temurin 8 (`maven:3-eclipse-temurin-8-alpine`)

Formerly Maven 3.5.4 on Oracle JDK 8. Ships `settings-docker.xml` in `/usr/share/maven/ref/`. `mvn` and `openjdk-mvn` are now the same image.

```
docker run --rm \
    -v /path/to/project:/data \
    dockette/java:mvn \
    mvn package

docker run --rm \
    -v /path/to/project:/data \
    dockette/java:openjdk-mvn \
    mvn package
```

## Versions

Every image is published as `dockette/java:<variant>`, where `<variant>` is `jdk8`, `openjdk8`, `mvn` or `openjdk-mvn`.
`YYYY.MM.DD` is the release date from `VERSION`.

| Tag                                  | Description                            |
|--------------------------------------|----------------------------------------|
| `dockette/java:<variant>`            | latest build of `master`               |
| `dockette/java:<variant>-YYYY.MM.DD` | `<variant>` image of release `YYYY.MM.DD` |

There is no `latest` tag on `dockette/java`; pick a variant. The separate repositories `dockette/jdk8`,
`dockette/openjdk8`, `dockette/mvn` and `dockette/openjdk-mvn` are no longer updated, use `dockette/java:<variant>`.

The base images (`eclipse-temurin:8-jdk-alpine` and `maven:3-eclipse-temurin-8-alpine`) are not pinned, so every build
picks up the current Temurin 8 and Maven 3. Releases are listed on [GitHub](https://github.com/dockette/java/releases).

## Development

```sh
make build-all                  # build all variants for linux/amd64
make test-all                   # java -version (and mvn -v) in every image
make build DOCKER_VARIANT=mvn   # build one variant
make version                    # print VERSION
make release                    # set today's date in VERSION
```

## Maintenance
See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
