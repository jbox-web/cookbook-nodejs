# encoding: utf-8

title 'Test NodeJS installation'

DISTROS = {
  '9'  => 'stretch',
  '10' => 'buster',
}

distro = DISTROS[os[:release].to_s.split('.').first]

# Test NodeJS package
describe package('nodejs') do
  it { should be_installed }
end

describe file('/etc/apt/sources.list.d/nodejs-binary.list') do
  it { should exist }

  case distro
  when 'stretch'
    its('content') { should include 'deb      https://deb.nodesource.com/node_14.x stretch main'  }
  when 'buster'
    its('content') { should include 'deb      https://deb.nodesource.com/node_14.x buster main'  }
  end
end

# Test Yarn package
describe package('yarn') do
  it { should be_installed }
end
