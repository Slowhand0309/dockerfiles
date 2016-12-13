# encoding: utf-8
require 'spec_helper'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

%w(wget lib32stdc++6 lib32z1).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/usr/local/android-sdk-linux') do
  it { should be_directory }
end

describe command('env') do
  its(:stdout) { should match /ANDROID_HOME/ }
end
