# encoding: utf-8

title 'Test NodeJS installation'

describe package('nodejs') do
  it { should be_installed }
end

describe package('yarn') do
  it { should be_installed }
end
