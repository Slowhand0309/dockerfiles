# Image for android dev.
#
FROM java:openjdk-8-jdk
ENV HOME_DIR /usr/local
WORKDIR $HOME_DIR

# Update packages.
RUN apt-get update && apt-get -y install sudo

# Install wget for download android sdk.
RUN sudo apt-get -y install wget

RUN sudo apt-get -y install lib32stdc++6 lib32z1

# Download android sdk.
RUN wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
RUN tar zxvf android-sdk_r24.4.1-linux.tgz
RUN rm -rf android-sdk_r24.4.1-linux.tgz

# Environment variables
ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

RUN echo y | android update sdk --no-ui --all --filter "android-23,build-tools-25.0.0"
RUN echo y | android update sdk --no-ui --all --filter "extra-android-m2repository"
