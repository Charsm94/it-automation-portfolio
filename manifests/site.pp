# IT Automation Portfolio - Main Manifest
node default {
  include tools
  
  class { 'apache':
    default_vhost => false,
  }
  
  apache::vhost { 'portfolio':
    port    => '80',
    docroot => '/var/www/html',
  }
}
