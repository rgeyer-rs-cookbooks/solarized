maintainer       "Ryan J. Geyer"
maintainer_email "me@ryangeyer.com"
license          "All rights reserved"
description      "Installs/Configures solarized"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

# Probably supports most *nix'y OS's but tested on OSX
supports "mac_os_x"

depends "rightscale"

recipe "solarized::install", "Grabs the latest version of solarized from git and puts it in a specified location"
recipe "solarized::apple_colorpalette", "Sets up the apple color palette to use solarized"

attribute "solarized/install_dir",
  :display_name => "Solarized Install Dir",
  :required => "optional",
  :recipes => ["solarized::install"]

attribute "solarized/profile",
  :display_name => "Solarized Profile",
  :required => "optional",
  :default => "Dark",
  :choice => ["Dark", "Light"]