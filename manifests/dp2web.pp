class roles::dp2web inherits roles::server {

  sudo::conf { 'aegir':
    content => 'aegir ALL=(ALL) NOPASSWD: /usr/bin/apache2ctl',
  }

  include profiles::apache
  include profiles::php5

}