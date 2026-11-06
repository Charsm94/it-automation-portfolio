package { 'htop':
  ensure => present,
}
file { '/etc/motd':
  content => "Managed by Irish - IT Automation Portfolio\n",
  ensure => present,
}
