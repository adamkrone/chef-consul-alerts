#
# Cookbook Name:: chef-consul-alerts
# Recipe:: service
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


if platform?('ubuntu')
  init_file = '/etc/init/consul-alerts.conf'
  init_tmpl = 'consul-alerts-conf.erb'
else
  init_file = '/etc/init.d/consul-alerts'
  init_tmpl = 'consul-alerts-init.erb'
end

command = "#{node['consul_alerts']['install_dir']}/consul-alerts start"
options = {
  :'--alert-addr' => node['consul_alerts']['alert_addr'],
  :'--consul-addr' => node['consul_alerts']['consul_addr'],
  :'--consul-dc' => node['consul_alerts']['consul_dc'],
  :'--consul-acl-token' => node['consul_alerts']['consul_acl_token'],
  :'--watch-checks' => node['consul_alerts']['watch_checks'],
  :'--watch-events' => node['consul_alerts']['watch_events']
}.select { |_,v| v }
 .map { |k,v| v == true ? k : "#{k}=#{v}" }
 .join(' ')

template init_file do
  source init_tmpl
  mode '0755'
  variables(
    command: command,
    options: options
  )
  notifies :restart, 'service[consul-alerts]', :immediately
end

service 'consul-alerts' do
  provider Chef::Provider::Service::Upstart if platform?('ubuntu')
  supports status: true, restart: true
  action [:enable, :start]
end
