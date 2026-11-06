class ntp {
  package { 'ntpsec':
    ensure => latest,
  }
  file { '/etc/ntpsec/ntp.conf':
    content => "server 0.pool.ntp.org\n",
    replace => true,
    require => Package['ntpsec'],
    notify  => Service['ntpsec'],
  }
  service { 'ntpsec':
    enable  => true,
    ensure  => running,
    require => File['/etc/ntpsec/ntp.conf'],
  }
}

