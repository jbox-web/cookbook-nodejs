# encoding: utf-8

title 'Test NodeJS installation'

# Test NodeJS package
describe package('nodejs') do
  it { should be_installed }
end

# Test Yarn package
describe package('yarn') do
  it { should be_installed }
end
