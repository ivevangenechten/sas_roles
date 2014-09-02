class roles::hostmaster inherits roles::server {
  include profiles::aegir

  sshkeys::sshclient { 'aegir': user => "aegir", }

}