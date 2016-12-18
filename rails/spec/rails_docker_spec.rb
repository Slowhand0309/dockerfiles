# encoding: utf-8
require 'spec_helper'

set :docker_image, 'slowhand/rails:1.0'

if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

# Spec for rails.
describe 'rails_install' do

  describe package('rails') do
    it { should be_installed.by('gem') }
  end
end

# Spec for dependency packages.
describe 'dependency' do

  describe package('sqlite3') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end
end

# Add specific gem check.
describe 'specific_gems' do

  describe package('pry-rails') do
    it { should be_installed.by('gem') }
  end
  describe package('pry-doc') do
    it { should be_installed.by('gem') }
  end
  describe package('pry-byebug') do
    it { should be_installed.by('gem') }
  end
  describe package('pry-stack_explorer') do
    it { should be_installed.by('gem') }
  end
end
