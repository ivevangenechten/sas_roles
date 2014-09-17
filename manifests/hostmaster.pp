class roles::hostmaster inherits roles::server {

  sudo::conf { 'aegir':
    content => 'aegir ALL=(ALL) NOPASSWD: ALL',
  }


  include profiles::aegir

}