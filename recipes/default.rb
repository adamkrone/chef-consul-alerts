#
# Cookbook Name:: consul-alerts
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'consul-alerts::install_binary'
include_recipe 'consul-alerts::service'
