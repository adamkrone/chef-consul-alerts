#
# Cookbook Name:: chef-consul-alerts
# Recipe:: install_binary
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

install_arch = node['kernel']['machine'] =~ /x86_64/ ? 'amd64' : '386'
install_version = ['consul-alerts', node['consul_alerts']['version'], node['os'], install_arch].join('-')
install_checksum = node['consul_alerts']['checksums'].fetch(install_version)
source_url = ::URI.join(node['consul_alerts']['base_url'], "#{install_version}.tar").to_s
extract_path = "#{Chef::Config[:file_cache_path]}/#{install_version}"
install_path = node['consul_alerts']['install_dir']

remote_file "#{extract_path}.tar" do
  source source_url
  checksum install_checksum
  :create_if_missing
end

execute "untar #{install_version}.tar" do
  command "tar xf #{extract_path}.tar -C #{install_path}"
end

file File.join(node['consul_alerts']['install_dir'], 'consul-alerts') do
  mode '0755'
  action :touch
end
