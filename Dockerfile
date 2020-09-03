FROM alpine:latest

WORKDIR /home

RUN apk update \
	&& apk add curl \
	&& curl -Lo /usr/local/bin/ecs-cli https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-linux-amd64-v1.20.0 \
	&& chmod +x /usr/local/bin/ecs-cli

COPY ./configure /

ENTRYPOINT ["/configure"]