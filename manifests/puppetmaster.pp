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

  #include puppetdb
  #include puppetdb::master::config

}