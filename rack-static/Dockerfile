# Rack static server.

FROM ruby:2.3.0
ENV LANG C.UTF-8
ENV HOME_DIR /usr/src/app
WORKDIR $HOME_DIR

RUN apt-get update -qq

COPY Gemfile $HOME_DIR/

RUN bundle install
ADD . $HOME_DIR
