FROM node:lts-alpine

RUN mkdir -p /home/node/app/node_modules

# Working directory
WORKDIR /home/node/app

RUN apk add --no-cache git


CMD["sh","start.sh"]