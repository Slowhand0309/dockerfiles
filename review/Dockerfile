# Image for install review gem.
#
FROM ruby:2.3.0

ENV REVIEW_VERSION 2.5.0

RUN mkdir -p /usr/src/book
WORKDIR /usr/src/book

# install Re:VIEW environment
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      texlive-lang-japanese texlive-fonts-recommended texlive-latex-extra \
      lmodern fonts-lmodern mecab ruby-mecab mecab-ipadic-utf8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# setup Re:VIEW
RUN gem install bundler rake --no-rdoc --no-ri && \
    gem install review -v "$REVIEW_VERSION" --no-rdoc --no-ri
