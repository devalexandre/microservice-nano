#!/bin/bash
sleep 20
if [ $NODE_ENV = "production" ]
then
  echo " rodando em ${NODE_ENV} service ${SERVICE}"
  node "${SERVICE}.js"
else
   echo " rodando em ${NODE_ENV} service ${SERVICE}"
   npx nodemon "${SERVICE}.js"
fi