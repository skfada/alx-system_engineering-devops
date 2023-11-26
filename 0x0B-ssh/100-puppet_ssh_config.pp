# using Puppet to make changes to our configuration file.

file { '/etc/ssh/sshd_config':
  ensure  => present,
  replace => true,
  content => template('ssh/sshd_config.erb'),
}

file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/sshd_config',
  line    => 'PasswordAuthentication no',
  match   => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path    => '/etc/ssh/sshd_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^#?IdentityFile',
}
