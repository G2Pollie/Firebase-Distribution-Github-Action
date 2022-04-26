FROM node:14.4.0-alpine3.12

WORKDIR /app
COPY . /app

RUN npm i -g @google-cloud/pubsub@2.7.0 firebase-tools@9.23.2 \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

