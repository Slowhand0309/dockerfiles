# encoding: utf-8
require 'docker'
require 'serverspec'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST']
set :docker_image, 'slowhand/android:1.0'

Excon.defaults[:ssl_verify_peer] = false
