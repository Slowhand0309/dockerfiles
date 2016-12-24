#!/usr/bin/env bash

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS

# Rails
docker push slowhand/rails:1.0

# gcc + cmake
docker push slowhand/gcc_cmake:1.0
