# -*- encoding: utf-8 -*-
#
# Cookbook Name:: clamav_test
# Recipe:: default
#
# Copyright 2013-2014, Jonathan Hartman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Compiler is needed to install Cucumber for the acceptance tests
include_recipe 'apt' if node['platform_family'] == 'debian'
include_recipe 'build-essential'
include_recipe 'clamav::default'

# vim: ai et ts=2 sts=2 sw=2 ft=ruby
