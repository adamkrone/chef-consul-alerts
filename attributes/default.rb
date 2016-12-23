default['consul_alerts']['base_url'] = 'https://bintray.com/artifact/download/darkcrux/generic/'
default['consul_alerts']['version'] = '0.3.3'
default['consul_alerts']['install_dir'] = '/usr/local/bin'
default['consul_alerts']['checksums'] = {
  'consul-alerts-0.3.0-darwin-amd64' => 'a06b1cf7393c8b7673c760bd36c3f030e02cbb4b895e532401915e3222213707',
  'consul-alerts-0.3.0-linux-386' => '7e9d4d38c1dc68b9c3675d020296c394115550857d67104e3593e57fcedab4c0',
  'consul-alerts-0.3.0-linux-amd64' => '331fc9e70433cf43705bcbc31c486c76f85e4ad1772db3c13bc80525441ce5c2',
  'consul-alerts-0.3.1-darwin-amd64' => '408602fc86590d4eed055ad40cbbb0713c65b4e88e738f4b792b3c7861ac36fe',
  'consul-alerts-0.3.1-linux-386' => 'a6f1156f2e0ce677426da819d7259da9519bb8a126e67ca70e674c5f7bb35f7a',
  'consul-alerts-0.3.1-linux-amd64' => '38e7e1400078c96cb8e3e224f86f2efef61c061c6f1b61acf1e26a370bd832f8',
  'consul-alerts-0.3.2-darwin-amd64' => 'cf8cd6a88299f1beb3d91617533a511db4e6b532fc747e3ededb5dc33a7cfe61',
  'consul-alerts-0.3.2-linux-386' => 'a916ef85bbb191f5c50ce01d5b67521b00b69457c21f6ecb4d1c5653da533323',
  'consul-alerts-0.3.2-linux-amd64' => '196911897dc4fe6036d13fba1a544ec3975fd2b3e3e27b05b21787bdcf765c33',
  'consul-alerts-0.3.3-darwin-amd64' => '5f572d103901a8667869b06a14b267c553b04e3b889c9cc1509becbd61cda101',
  'consul-alerts-0.3.3-linux-386' => '7f71358c5182a16c5ae8759d24e11899fd348ba8cdda6f837cb534ae2266660d',
  'consul-alerts-0.3.3-linux-amd64' => '93e3f1c14def1f24658bad00cd71831c0af8faa0bbc6e889a0c8568f45caa1a1',
}

# Daemon Options
default['consul_alerts']['alert_addr'] = 'localhost:9000'
default['consul_alerts']['consul_addr'] = 'localhost:8500'
default['consul_alerts']['consul_dc'] = 'dc1'
default['consul_alerts']['consul_acl_token'] = nil
default['consul_alerts']['watch_checks'] = true
default['consul_alerts']['watch_events'] = true
default['consul_alerts']['log_level'] = 'info'
