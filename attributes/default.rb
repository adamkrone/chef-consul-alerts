default['consul_alerts']['base_url'] = 'https://github.com/AcalephStorage/consul-alerts/releases/download/'
default['consul_alerts']['version'] = '0.3.0'
default['consul_alerts']['install_dir'] = '/usr/local/bin'
default['consul_alerts']['checksums'] = {
  'consul-alerts-0.3.0-darwin-amd64' => 'a06b1cf7393c8b7673c760bd36c3f030e02cbb4b895e532401915e3222213707',
  'consul-alerts-0.3.0-linux-386' => '7e9d4d38c1dc68b9c3675d020296c394115550857d67104e3593e57fcedab4c0',
  'consul-alerts-0.3.0-linux-amd64' => '331fc9e70433cf43705bcbc31c486c76f85e4ad1772db3c13bc80525441ce5c2'
}

# Daemon Options
default['consul_alerts']['alert_addr'] = 'localhost:9000'
default['consul_alerts']['consul_addr'] = 'localhost:8500'
default['consul_alerts']['consul_dc'] = 'dc1'
default['consul_alerts']['watch_checks'] = true
default['consul_alerts']['watch_events'] = true
