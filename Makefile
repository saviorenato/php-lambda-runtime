CONTAINER_NAME = aws-lambda-php
#Recipes
all: init

init:
	@docker-compose up -d
build:
	@@docker build . -t $(CONTAINER_NAME)
get:
	@curl -XGET "http://localhost:9000/2015-03-31/functions/function/invocations"
post:
	@curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"queryStringParameters": {"name":"Leo"}}'


.PHONY: all init