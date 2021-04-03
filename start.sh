#!/bin/bash

service="${SERVICE}.js"

if [ $NODE_ENV = "production" ]
then
  node $service
else
   npx nodemon $service
fi


