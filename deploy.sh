#!/usr/bin/env bash

sudo docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS

# Android
sudo docker push slowhand/android:1.0

# Rails
sudo docker push slowhand/rails:1.0

# gcc + cmake
sudo docker push slowhand/gcc_cmake:1.0
