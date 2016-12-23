# Image for gcc cmake dev.
#
FROM gcc
ENV HOME_DIR /usr/local/app
WORKDIR $HOME_DIR

ENV CMAKE_VERSION v3.7
ENV CMAKE_VERSION_DETAIL 3.7.1

# Install cmake.
RUN cd /tmp \
    && wget https://cmake.org/files/$CMAKE_VERSION/cmake-$CMAKE_VERSION_DETAIL.tar.gz \
    && tar zxvfo cmake-$CMAKE_VERSION_DETAIL.tar.gz \
    && cd cmake-$CMAKE_VERSION_DETAIL \
    && ./configure \
    && make \
    && make install

# Install gtest.
RUN cd /tmp \
    && git clone https://github.com/google/googletest.git \
    && cd googletest \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && cp -r /tmp/googletest/googletest/include/gtest /usr/local/include/ \
    && cp /tmp/googletest/build/googlemock/gtest/lib*.a /usr/local/lib
