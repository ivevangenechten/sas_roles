class roles::server {

  sudo::conf { 'root':
    content => 'root ALL=(ALL) ALL',
  }
  sudo::conf { 'admin':
    content => '%admin ALL=(ALL) ALL',
  }
  sudo::conf { 'sudo':
    content => '%sudo ALL=(ALL) ALL',
  }
  sudo::conf { 'beheerder':
    content => 'beheerder ALL=(ALL) NOPASSWD: ALL',
  }
  sudo::conf { 'jenkins-puppet':
    content => 'jenkins ALL=(ALL) NOPASSWD: /usr/bin/puppet',
  }

  include profiles::sshkeys
  # include profiles::apt
  include profiles::nano

  if $fqdn =~ /dev-sas.vito.local/ {
    sudo::conf { 'vagrant':
      content => '%vagrant ALL=(ALL) NOPASSWD: ALL',
    }
  } else {
    include profiles::network
  }

  include profiles::ntp
  # include profiles::snmp
  include profiles::users
  include profiles::vim

  case $::virtual {
    'vmware': { include profiles::vmwaretools }
  }

}