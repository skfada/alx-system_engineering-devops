# to Use Puppet to install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}

file { '/usr/local/bin/check_flask_version':
  ensure => file,
  content => "#!/bin/bash\n/usr/bin/flask --version",
  mode    => '0755',
  require => Exec['install_flask'],
}

exec { 'run_check_flask_version':
  command     => '/usr/local/bin/check_flask_version',
  refreshonly => true,
  subscribe   => File['/usr/local/bin/check_flask_version'],
}

