default['solarized']['git_uri'] = 'git://github.com/altercation/solarized.git'
default['solarized']['profile'] = 'Dark'

case node['platform']
  when "mac_os_x"
    default['solarized']['install_dir'] = ::File.join(ENV['HOME'], 'Library', 'solarized')
  else
    default['solarized']['install_dir'] = "/opt/solarized"
end