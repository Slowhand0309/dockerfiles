# encoding: utf-8
require 'spec_helper'

set :docker_image, 'slowhand/gcc_cmake:1.0'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

# Check for should be installed cmake.
describe command('cmake --version') do
  its(:stdout) { should match /^cmake version 3.7.1/ }
end

# Check for should be installed gtest.
describe file('/usr/local/include/gtest') do
  it { should be_directory }
end

describe file('/usr/local/include/gtest/gtest.h') do
  it { should be_file }
end

%w(libgtest.a libgtest_main.a).each do |lib|
  describe file(lib) do
    it { should be_file }
  end
end
