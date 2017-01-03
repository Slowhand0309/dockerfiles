#!/usr/bin/env bash

docker-compose run --rm web mv /tmp/Gemfile /tmp/Gemfile.lock .
docker-compose run --rm web rails new . --skip-bundle
