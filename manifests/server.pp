class roles::server {
  # include profiles::apt
  include profiles::nano
  include profiles::ntp
  # include profiles::snmp
  include profiles::vim
  include profiles::users

  case $::virtual {
    'vmware': { include profiles::vmwaretools }
  }

}