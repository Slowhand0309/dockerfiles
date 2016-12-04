# encoding: utf-8
require 'spec_helper'

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
