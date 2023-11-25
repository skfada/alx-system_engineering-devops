# to Use Puppet to install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}

file { '/usr/local/bin/flask':
  ensure => link,
  target => '/usr/local/bin/flask',
  require => Exec['install_flask'],
}

