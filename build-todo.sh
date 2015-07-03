#!/bin/bash

# clone the two sub-projects to known locations
git clone https://github.com/roundand/todo-web.git ./todo-web
git clone https://github.com/roundand/todo-server.git ./todo-server

# clear the decks for a (re)build
docker-compose kill

# copy proxy settings to a file for inclusion in containers
set | grep -i _proxy= > proxies.env

# rebuild, and wait for completion
docker-compose build
sleep 30

# fire 'em up
docker-compose up -d

# check it's working!
curl 127.0.0.1/todo
