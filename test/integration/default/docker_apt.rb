# encoding: utf-8
# author: Michael Carlson

describe command('apt-cache') do
  it { should exist }
end

describe command('apt-cache policy') do
  its ( "stdout" ) { should match /download\.docker\.com/ }
end

describe package('docker.io') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end