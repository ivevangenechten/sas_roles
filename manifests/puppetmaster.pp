class roles::puppetmaster inherits roles::server {

  sudo::conf { 'jenkins':
    content => 'jenkins ALL=(ALL) NOPASSWD: /usr/local/bin/r10k, /usr/bin/svn',
  }

}