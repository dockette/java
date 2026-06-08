# AGENTS.md

## Project

Legacy Dockette Java image collection for Java 8 and Maven 3 workloads. Images are based on maintained Eclipse Temurin Alpine Java 8 images and are kept for compatibility, not as current Java runtime images.

## Images

- Published images are `dockette/jdk8`, `dockette/openjdk8`, `dockette/mvn`, and `dockette/openjdk-mvn`.
- Build contexts are `jdk8`, `openjdk8`, `mvn`, and `openjdk-mvn`.
- `jdk8` and `mvn` use Eclipse Temurin OpenJDK 8 instead of legacy Oracle downloads.
- `openjdk8` and `openjdk-mvn` use Eclipse Temurin OpenJDK 8 instead of pinned Alpine OpenJDK packages.
- `mvn` and `openjdk-mvn` include Maven `3.5.4` and `settings-docker.xml`.
- GitHub Actions builds and publishes each context with the `latest` tag.

## Commands

- `make build` builds all four image contexts.
- `make build-jdk8`, `make build-mvn`, `make build-openjdk-mvn`, and `make build-openjdk8` build individual images.
- `make test` runs `java -version` and, for Maven images, `mvn -version`.
- `make run` defaults to `run-openjdk8`.
- Override `DOCKER_IMAGE_PREFIX` or `DOCKER_TAG` for local image names and tags.

## Testing

- Use `make -n build test run` to dry-run the aggregate commands before changing build logic.
- Run the relevant `make test-*` target after building one image context.
- Keep workflow matrix items in sync with the `IMAGES` Makefile variable and repository directories.

## Guidelines

- Keep Dockerfiles, `Makefile`, README usage examples, and `.github/workflows/docker.yml` matrix entries aligned.
- Prefer `DOCKER_*` names for Docker-related Makefile variables.
- Place `.PHONY: <target>` directly above each Makefile target.
- Treat version bumps as legacy compatibility changes and update README version notes when image contents change.
- Do not introduce unrelated formatting or structural changes.
