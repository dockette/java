DOCKER_IMAGE_PREFIX?=dockette
DOCKER_TAG?=latest
IMAGES := jdk8 mvn openjdk-mvn openjdk8


.PHONY: build
build: $(addprefix build-,$(IMAGES))

.PHONY: test
test: $(addprefix test-,$(IMAGES))
.PHONY: run
run: run-openjdk8

.PHONY: build-jdk8
build-jdk8:
	docker build -t ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} jdk8

.PHONY: build-mvn
build-mvn:
	docker build -t ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} mvn

.PHONY: build-openjdk-mvn
build-openjdk-mvn:
	docker build -t ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} openjdk-mvn

.PHONY: build-openjdk8
build-openjdk8:
	docker build -t ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} openjdk8

.PHONY: test-jdk8
test-jdk8:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} java -version

.PHONY: test-mvn
test-mvn:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} java -version
	docker run --rm ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} mvn -version

.PHONY: test-openjdk-mvn
test-openjdk-mvn:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} java -version
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} mvn -version

.PHONY: test-openjdk8
test-openjdk8:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} java -version

.PHONY: run-jdk8
run-jdk8:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} java -version

.PHONY: run-mvn
run-mvn:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG}

.PHONY: run-openjdk-mvn
run-openjdk-mvn:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG}

.PHONY: run-openjdk8
run-openjdk8:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} java -version
