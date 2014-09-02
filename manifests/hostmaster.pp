class roles::hostmaster inherits roles::server {
  include profiles::aegir

  sshkeys::sshclient { 'aegir': user => "aegir", }
  sshkeys::sshserver { 'aegir': user => "aegir", }
  sshkeys::sshserver { 'jenkins': user => "jenkins", }

}