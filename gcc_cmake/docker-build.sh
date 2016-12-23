#!/usr/bin/env bash
# Build docker image for Circle CI

docker build -t slowhand/gcc_cmake:1.0 .
