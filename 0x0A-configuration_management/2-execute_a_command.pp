# Using Puppet to create a manifest that kills a process named killmenow

exec { 'kill_process':
  command     => 'pkill killmenow',
  refreshonly => true,
  onlyif      => 'pgrep killmenow',
}
