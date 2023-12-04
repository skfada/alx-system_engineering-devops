# Use Puppet to automate the task of creating a custom HTTP header response
exec { 'update':
  command => '/usr/bin/apt-get update',
  path    => '/usr/bin', # Adding path for the command
}

package { 'nginx':
  ensure => 'installed', # Using 'installed' as the parameter
}

file { '/etc/nginx/nginx.conf': # Using 'file' instead of 'file_line'
  ensure  => present,
  content => template('path/to/nginx_conf_template.erb'), # Using a template for the configuration
  require => Package['nginx'], # Ensuring Nginx package is installed before modifying the config file
}

exec { 'add_custom_header':
  command  => '/bin/echo -e "\nadd_header X-Served-By \"${hostname}\";" >> /etc/nginx/nginx.conf',
  unless   => '/bin/grep -q "add_header X-Served-By \"${hostname}\";" /etc/nginx/nginx.conf',
  require  => File['/etc/nginx/nginx.conf'], # Ensuring file modification happens after file creation
  notify   => Service['nginx'], # Notifying to restart the service when changes occur
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'], # Ensuring Nginx package is installed before managing the service
}
