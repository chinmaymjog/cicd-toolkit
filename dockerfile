FROM python:3.13.1-alpine3.21

RUN apk update && apk upgrade
RUN apk add bash
RUN apk add mysql-client docker docker-compose curl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && \
mv ./kubectl /usr/local/bin/kubectl
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN apk add py3-pip
RUN pip install azure-cli

COPY ./scripts /scripts
