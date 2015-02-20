require 'spec_helper'

case os[:family]
when 'ubuntu'
  init_file = '/etc/init/consul-alerts.conf'
else
  init_file  = '/etc/init.d/consul-alerts'
end

describe 'consul-alerts::service' do
  describe service('consul-alerts') do
    it { should be_running }
  end

  describe file(init_file) do
    it { should be_file }
    it { should contain '--alert-addr=localhost:9000' }
    it { should contain '--consul-addr=localhost:8500' }
    it { should contain '--consul-dc=dc1' }
    it { should contain '--watch-checks' }
    it { should contain '--watch-events' }
  end
end
