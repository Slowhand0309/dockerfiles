#!/usr/bin/env bash

WORKDIR=$PWD

# Find target directory.
for entity in `find . -type d -mindepth 1 -maxdepth 1 -not -name ".git"`; do
  # Only exist spec directory.
  if [ -e $entity/spec ]; then
    # Build docker image.
    cd $entity
    ./docker-build.sh

    cd spec
    # Install gems via bundler.
    bundle install --path vendor/bundle
    bundle exec rspec
    cd $WORKDIR
  fi
done
