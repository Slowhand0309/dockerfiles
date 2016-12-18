#!/usr/bin/env bash

WORKDIR=$PWD

# Prepare gem install.
bundle install

# Find target directory.
for entity in `find . -type d -mindepth 1 -maxdepth 1 -not -name ".git"`; do

  if [ "$entity" = specfiles ]; then
    echo "continue"
    continue
  fi

  # Only exist spec directory.
  if [ -e $entity/spec ]; then
    # Copy specfiles.
    cp $WORKDIR/specfiles/.rspec $entity/.
    cp -r $WORKDIR/specfiles/spec $entity/.

    # Build docker image.
    cd $entity
    ./docker-build.sh

    # Exec rspec
    rspec
    cd $WORKDIR
  fi
done
