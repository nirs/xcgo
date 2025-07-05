# Tested on:
# - Fedora 42 (linux/amd64)

REGISTRY := dockerhub.io
USER := minikubebot
IMAGE := xcgo
TAG := devel
TOOL := docker

image_url = $(REGISTRY)/$(USER)/$(IMAGE):$(TAG)

.PHONY: build

build:
	$(TOOL) build --tag $(image_url) .
