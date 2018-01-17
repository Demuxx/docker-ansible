# encoding: utf-8
# author: Michael Carlson

describe file('/tmp/docker.gpg') do
  it { should exist }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '00644' }
  its('content') { should match /mQINBFit2ioBEADhWpZ8/ }
end

describe command('apt-key') do
  it { should exist }
end

describe command('apt-key list') do
  its('stdout') { should match /4096R\/0EBFCD88/ }
end