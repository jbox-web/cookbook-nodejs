# encoding: utf-8

title 'Test NodeJS installation'

# Test NodeJS package
describe package('nodejs') do
  it { should be_installed }
end

describe file('/etc/apt/sources.list.d/stretch-nodejs-binary.list') do
  it { should exist }
  its('content') { should include 'https://deb.nodesource.com/node_11.x'  }
end

# Test Yarn package
describe package('yarn') do
  it { should be_installed }
end
