#!/bin/bash

docker-compose pull $1
docker-compose stop $1
docker-compose up -d $1
