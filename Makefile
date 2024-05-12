IMAGE_NAME := chatbot_with_ai
IMAGE_TAG := 1.0

PHONY: build
build:
	docker build -t $(IMAGE_NAME):${IMAGE_TAG} .

.PHONY: run
run: build
	docker run \
	-p 8888:8888 \
	-v ./src:/home/jovyan/work \
	-it ${IMAGE_NAME}:${IMAGE_TAG} 
