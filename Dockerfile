FROM node:lts-alpine

RUN mkdir -p /home/node/app/node_modules

# Working directory
WORKDIR /home/node/app

# Install dependencies
COPY package.json package-lock.json ./
RUN apk add --no-cache git



# Copy source
COPY . /home/node/app/
RUN chown -R node:node /home/node
RUN npm ci --silent
# Build and cleanup
ENV NODE_ENV=production
USER node

RUN touch /home/node/app/start.sh
RUN chmod +x /home/node/app/start.sh

RUN echo -e " #!/bin/bash \n service='${SERVICE}.js' \n if [ $NODE_ENV = 'production' ] \n then \n node $service \n else \n npx nodemon $service \n fi"

EXPOSE 3000

# Start server
CMD ["sh","start.sh"]