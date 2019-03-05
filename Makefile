GITBOOK_VERSION = 3.2.3

DOCKER_IMAGE = 360cloud/gitbook

.PHONY: all build push

all: build push

build:
	docker build . --tag $(DOCKER_IMAGE):$(GITBOOK_VERSION) --build-arg GITBOOK_VERSION=$(GITBOOK_VERSION)

push:
	docker push $(DOCKER_IMAGE):$(GITBOOK_VERSION)

