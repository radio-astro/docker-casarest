DOCKER_REPO=radioastro/casarest:1.4.1

.PHONY: build clean

all: run

build:
	docker build -t ${DOCKER_REPO} .

run: build
	docker run -ti ${DOCKER_REPO}

clean:
	docker rmi ${DOCKER_REPO}
