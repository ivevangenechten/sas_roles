class roles::hostmaster inherits roles::server {

  sudo::conf { 'aegir':
    content => 'aegir ALL=(ALL) NOPASSWD: ALL',
  }

  class { '::profiles::aegir':
  }


}