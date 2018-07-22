#!/usr/bin/env bash

WORKDIR=$PWD

# Find target directory.
for entity in `find . -type d -mindepth 1 -maxdepth 1 -not -name ".git"`; do

  if [ $entity = "./specfiles" ]; then
    # Ignore directory
    continue
  fi

  # Only exist spec directory.
  if [ -e $entity/spec ]; then
    # Copy specfiles.
    cp $WORKDIR/specfiles/.rspec $entity/.
    cp -r $WORKDIR/specfiles/spec $entity/.

    # Build docker image.
    cd $entity
    sudo ./docker-build.sh
    cd $WORKDIR

    # Exec rspec
    sudo rspec --default-path $entity/spec
  fi
done
