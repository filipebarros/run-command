FROM alpine:latest

LABEL author="Filipe Barros"
LABEL description="Run command inside docker container"
LABEL version="1.0.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
