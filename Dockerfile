FROM node:lts-alpine

RUN mkdir -p /home/node/app/node_modules

# Working directory
WORKDIR /home/node/app

RUN apk add --no-cache git

# Copy source
COPY . /home/node/app/

ENV NODE_ENV=production

# Start server
CMD ["sh","start.sh"]