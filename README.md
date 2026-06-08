<h1 align=center>Dockette / Java</h1>

<p align=center>
   <a href="https://github.com/dockette/java/actions"><img src="https://github.com/dockette/java/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/u/dockette"><img src="https://img.shields.io/badge/docker-images-2496ed?logo=docker&logoColor=white" alt="Docker Hub images"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   Ready-to-use legacy images for Java 8, OpenJDK 8, and Maven 3.
</p>

-----

## Usage

### JDK 8

> Eclipse Temurin OpenJDK 8

This Java JDK 8 image is based on Eclipse Temurin Alpine.
Docker Hub: <https://hub.docker.com/r/dockette/jdk8>

```
docker run -v /path/to/site:/data dockette/jdk8
```

### OpenJDK 8

> Eclipse Temurin OpenJDK 8

This OpenJDK 8 image is based on Eclipse Temurin Alpine.
Docker Hub: <https://hub.docker.com/r/dockette/openjdk8>

```
docker run -v /path/to/site:/data dockette/openjdk8
```

### Maven 3

> Maven 3.5.4

This Maven 3 with Java JDK 8 image is based on Eclipse Temurin Alpine.
Docker Hub: <https://hub.docker.com/r/dockette/mvn>

```
docker run -v /path/to/site:/data dockette/mvn
```

### OpenJDK 8 + Maven 3

This Maven 3 with OpenJDK 8 image is based on Eclipse Temurin Alpine.
Docker Hub: <https://hub.docker.com/r/dockette/openjdk-mvn>

```
docker run -v /path/to/site:/data dockette/openjdk-mvn
```

## Legacy Support

These images target Java 8 and Maven 3.5.4. They are kept for legacy workloads and should not be treated as current Java runtime images.

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
