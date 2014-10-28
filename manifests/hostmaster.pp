class roles::hostmaster inherits roles::server {

  class { '::profiles::aegir':
  }


}