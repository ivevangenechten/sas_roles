class roles::dp2db inherits roles::server {

  class { '::profiles::aegir':
    install_aegir    => false,
    install_mysql    => true,
    install_apache2  => false
  }

}