#
# Cookbook Name:: clamav_test
# Recipe:: features
#
# Copyright 2012-2013, Jonathan Hartman
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

%w{chefspec minitest-chef-handler cucumber}.each do |g|
  chef_gem g do
    action :install
  end
end

cuke_path = Gem.bin_path("cucumber", "cucumber")
feat_path = "/test-kitchen/source/test/features"

execute "cucumber" do
  command "#{cuke_path} #{feat_path}"
  action :run
end

# vim: ai et ts=2 sts=2 sw=2 ft=ruby fdm=marker
