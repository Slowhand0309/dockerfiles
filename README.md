# dockerfiles

My dockerfiles.:dizzy:

[![CircleCI](https://circleci.com/gh/Slowhand0309/dockerfiles.svg?style=svg)](https://circleci.com/gh/Slowhand0309/dockerfiles)

****

## Images

|Image|DockerHub|Contains|From|
|:----|:--------|:-----------|
|android|https://hub.docker.com/r/slowhand/android/|Android SDK<br>wget|java:openjdk-8-jdk|
|gcc_cmake|https://hub.docker.com/r/slowhand/gcc_cmake/|cmake<br>googletest|gcc|
|phonegap|-|git<br>nodejs<br>phonegap-cli<br>grunt-cli<br>bower|slowhand/android:1.0|
|rack-static|-|rack|ruby:2.3.0|
|rails|https://hub.docker.com/r/slowhand/rails/|sqlite<br>nodejs<br>rails|ruby:2.3.0|

## Spec

Dependencies

* [Serverspec](http://serverspec.org)

* [docker-api](https://github.com/swipely/docker-api)

## CI

[CircleCI](https://circleci.com)

## Licence

[MIT](https://opensource.org/licenses/MIT)

## Author

[slowhand0309](https://github.com/Slowhand0309)
