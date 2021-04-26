FROM node:lts-alpine

RUN mkdir -p /home/node/app
# Working directory
WORKDIR /home/node/app

RUN apk add --no-cache git

# Copy source
COPY ./docker-entrypoint.sh /home/node/app/docker-entrypoint.sh

# Start server
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
