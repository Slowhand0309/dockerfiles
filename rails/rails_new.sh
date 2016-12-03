#!/usr/bin/env bash

docker-compose run --rm web rails new .
docker-compose run --rm web rake db:setup

