#!/bin/bash

if [ $NODE_ENV = "production" ]
then
  node "${SERVICE}.js"
else
   npx nodemon "${SERVICE}.js"
fi