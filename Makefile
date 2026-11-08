include VERSION

DOCKER_IMAGE=dockette/java
DOCKER_VARIANT?=jdk8
DOCKER_TAG?=$(DOCKER_VARIANT)
DOCKER_PLATFORMS?=linux/amd64
VARIANTS=jdk8 openjdk8 mvn openjdk-mvn

# One build, two tags per variant: <variant> and <variant>-<date>. There is no `latest`,
# because the repository holds several variants.
DOCKER_PUSH_TAGS=-t ${DOCKER_IMAGE}:${DOCKER_TAG} -t ${DOCKER_IMAGE}:${DOCKER_TAG}-${VERSION}

.PHONY: build
build:
	docker buildx build --platform ${DOCKER_PLATFORMS} --load -t ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_VARIANT}/

.PHONY: build-all
build-all:
	for variant in ${VARIANTS}; do $(MAKE) build DOCKER_VARIANT=$$variant || exit 1; done

.PHONY: test
test:
	docker run --rm --platform ${DOCKER_PLATFORMS} ${DOCKER_IMAGE}:${DOCKER_TAG} java -version
	if [ "${DOCKER_VARIANT}" = mvn ] || [ "${DOCKER_VARIANT}" = openjdk-mvn ]; then docker run --rm --platform ${DOCKER_PLATFORMS} ${DOCKER_IMAGE}:${DOCKER_TAG} mvn -v; fi

.PHONY: test-all
test-all:
	for variant in ${VARIANTS}; do $(MAKE) test DOCKER_VARIANT=$$variant || exit 1; done

.PHONY: push
push:
	docker buildx build --platform ${DOCKER_PLATFORMS} ${DOCKER_PUSH_TAGS} --push ${DOCKER_VARIANT}/

.PHONY: version
version:
	@echo ${VERSION}

.PHONY: release
release:
	@sed -i.bak "s/^VERSION=.*/VERSION=$$(date -u +%Y.%m.%d)/" VERSION && rm VERSION.bak
	@cat VERSION
