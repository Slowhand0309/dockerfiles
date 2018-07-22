#!/usr/bin/env bash

docker login -u $DOCKER_USER -p $DOCKER_PASS

# Android
docker push slowhand/android:1.0

# Rails
docker push slowhand/rails:1.0

# gcc + cmake
docker push slowhand/gcc_cmake:1.0
