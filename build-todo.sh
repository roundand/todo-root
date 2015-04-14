#!/bin/bash
git clone git@github.com:roundand/todo-web.git ./todo-web
git clone git@github.com:roundand/todo-server.git ./todo-server
docker-compose kill
docker-compose build
docker-compose up -d
curl 127.0.0.1/todo
