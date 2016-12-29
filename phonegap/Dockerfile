# Image for phonegap dev.
#
FROM slowhand/android:1.0

ENV HOME_DIR /usr/local/app
WORKDIR $HOME_DIR

# Install Node.js.
ENV NODE_VERSION 6.9.2
RUN cd /tmp && \
    wget -q http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
    tar -zxvf node-v${NODE_VERSION}-linux-x64.tar.gz && \
    mv node-v${NODE_VERSION}-linux-x64 /usr/local/node && \
    rm node-v${NODE_VERSION}-linux-x64.tar.gz
ENV PATH ${PATH}:/usr/local/node/bin

# Install PhoneGap
ENV PHONEGAP_VERSION 6.4.2

RUN apt-get install -y git-core

RUN npm install -g phonegap@${PHONEGAP_VERSION} && \
    npm install -g grunt-cli && \
    npm install -g bower
