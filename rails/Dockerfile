# Image for install rails gem.
#
FROM ruby:2.3.0
ENV LANG C.UTF-8
ENV HOME_DIR /usr/src/app
WORKDIR $HOME_DIR

RUN apt-get update -qq
RUN apt-get install -y nodejs mysql-client postgresql-client sqlite3 --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile /tmp

RUN cd /tmp && bundle install

# Publish port 3000
EXPOSE 3000
