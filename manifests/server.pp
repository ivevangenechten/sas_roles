class roles::server {
  # include profiles::apt
  include profiles::nano
  include profiles::network
  include profiles::ntp
  # include profiles::snmp
  include profiles::users
  include profiles::vim

  case $::virtual {
    'vmware': { include profiles::vmwaretools }
  }

  sshkeys::sshserver { 'aegir': user => "aegir", }
  sshkeys::sshserver { 'jenkins': user => "jenkins", }

}