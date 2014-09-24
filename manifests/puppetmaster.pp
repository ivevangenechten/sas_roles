class roles::puppetmaster inherits roles::server {

  sudo::conf { 'jenkins':
    content => 'jenkins ALL=(ALL) NOPASSWD: /usr/local/bin/r10k, /usr/bin/svn',
  }
  sudo::conf { 'foreman1':
    content => 'Defaults:foreman-proxy !requiretty',
  }
  sudo::conf { 'foreman2':
    content => 'foreman-proxy ALL = NOPASSWD: /usr/bin/puppet',
  }

  class { 'puppetdb':
    listen_address => 'puppet.sas.vito.local:8081',
  }
  include puppetdb::master::config

}