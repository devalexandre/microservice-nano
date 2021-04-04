# Microservice 
## _Microservice Nano Image_

[![Build Status](https://travis-ci.com/devalexandre/microservice-nano.svg?branch=master)](https://travis-ci.com/devalexandre/microservice-nano)

This image aims to facilitate the development of microservices.
Facilitating the deployment and its developments

- Port 3000 for api gateway
- Env SERVICE to run to run the specific microservice
- Env NODE_ENV  production for production and develop to use hot-reload
- ✨Magic ✨

## Installation

Run 
```sh
docker push alephp/microservice-nano

```

For production environments...

```yml
version: '3.5'

services:
  gateway:
    image: alephp/microservice-base
    container_name: gateway
    environment:
      - "SERVICE=gateway"
```
