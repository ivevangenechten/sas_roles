class roles::server {

  include profiles::sshkeys
  include profiles::apt
  include profiles::nano
  include profiles::sudoers
  include profiles::activedirectory

  # Don't set network settings when provisioning a Vagrant box (dev-sas domain).
  unless $fqdn =~ /dev-sas.vito.local/ {
    include profiles::network
  }

  include profiles::ntp
  # include profiles::snmp
  include profiles::users
  include profiles::vim

  # Include VMWare Tools when provisioning a virtual VMWare box.
  case $::virtual {
    'vmware': { include profiles::vmwaretools }
  }

}