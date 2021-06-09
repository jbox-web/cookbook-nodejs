# encoding: utf-8

title 'Test NodeJS installation'

# Fetch Inspec inputs
debian_release = input('debian_release')
nodejs_version = input('nodejs_version')

# Test NodeJS package
describe package('nodejs') do
  it { should be_installed }
  its('version') { should eq nodejs_version }
end

describe file('/etc/apt/sources.list.d/nodejs-binary.list') do
  it { should exist }
  its('content') { should include "deb      https://deb.nodesource.com/node_14.x #{debian_release} main"  }
end

# Test Yarn package
describe package('yarn') do
  it { should be_installed }
end

describe file('/etc/apt/sources.list.d/yarn-binary.list') do
  it { should exist }
  its('content') { should include 'deb      https://dl.yarnpkg.com/debian stable main'  }
end
