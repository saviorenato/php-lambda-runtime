FROM saviorenato/aws-lambda-php:latest

COPY ./src /var/task

CMD [ "index" ]