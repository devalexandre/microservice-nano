FROM node:lts-alpine

RUN mkdir -p /home/node/app
# Working directory
WORKDIR /home/node/app

RUN apk add --no-cache git curl

# Copy source
COPY ./docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

# Start server

CMD ["sh", "/opt/docker-entrypoint.sh"]
