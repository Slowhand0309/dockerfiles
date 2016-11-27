# Image for install rails gem.
#
FROM ruby:2.3.0
ENV LANG C.UTF-8
ENV HOME_DIR /usr/src/app
WORKDIR $HOME_DIR

RUN apt-get update -qq

ADD Gemfile $HOME_DIR/Gemfile
ADD Gemfile.lock $HOME_DIR/Gemfile.lock
RUN bundle install
ADD . $HOME_DIR
