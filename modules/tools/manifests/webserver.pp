class tools::webserver {
  class { 'apache':
    default_vhost => false,
  }

  apache::vhost { 'myweb':
    port    => '80',
    docroot => '/var/www/html',
  }

  file { '/var/www/html/index.html':
    content => "<h1>Managed by Puppet - IT Automation Portfolio</h1>\n",
    ensure  => present,
  }
}
