require 'spec_helper'

describe 'consul-alerts::install_binary' do
  describe file('/usr/local/bin/consul-alerts') do
    it { should be_file }
    it { should be_executable }
  end
end
