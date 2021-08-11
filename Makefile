CONTAINER_NAME = php8-aws-lambda
SERVER_NAME = aws-lambda

#Recipes
all: init

init:
	@docker build . -t $(CONTAINER_NAME)
	@docker run --name $(SERVER_NAME) -p 9000:8080 $(CONTAINER_NAME)
build:
	@docker build . -t $(CONTAINER_NAME)
image-push:
	@docker build . -t $(CONTAINER_NAME)


.PHONY: all init