class roles::puppetmaster inherits roles::server {

  class { '::sshkeys::keymaster':}

}