#!/usr/bin/env bash

if [ -e Gemfile ]; then
  rm Gemfile
fi
if [ -e Gemfile.lock ]; then
  rm Gemfile.lock
fi
echo 'source "https://rubygems.org"' >> Gemfile
echo 'gem "rails"' >> Gemfile
touch Gemfile.lock

docker-compose run web rails new . --skip-bundle
