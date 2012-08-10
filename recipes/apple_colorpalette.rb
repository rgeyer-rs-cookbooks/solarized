#
# Cookbook Name:: solarized
# Recipe:: apple_colorpalette
#
#  Copyright 2012 Ryan J. Geyer
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

rightscale_marker :begin

include_recipe "solarized::install"

bash "Copy color palette file to my colors" do
  code <<-EOF
cp #{::File.join(node['solarized']['install_dir'], 'apple-colorpalette-solarized', 'solarized.clr')} #{File.join(ENV['HOME'], 'Library', 'Colors')}/
  EOF
end

log "The solarized color scheme has been installed for you, but you still must select it in the color picker."

rightscale_marker :end