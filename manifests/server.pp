class roles::server {

  sudo::conf { 'beheerder':
    content => 'beheerder ALL=(ALL) NOPASSWD: ALL',
  }

  include sshkeys
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

}