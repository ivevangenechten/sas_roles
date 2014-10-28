class roles::dp2web inherits roles::server {

  class { '::profiles::aegir':
    install_aegir    => false,
    install_mysql    => false,
    install_apache2  => true
  }

}