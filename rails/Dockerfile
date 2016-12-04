# Image for install rails gem.
#
FROM ruby:2.3.0
ENV LANG C.UTF-8
ENV HOME_DIR /usr/src/app
WORKDIR $HOME_DIR

RUN apt-get update -qq
RUN apt-get install -y sqlite3
RUN apt-get install -y nodejs

COPY Gemfile $HOME_DIR/

RUN bundle install
ADD . $HOME_DIR

# Publish port 3000
EXPOSE 3000
