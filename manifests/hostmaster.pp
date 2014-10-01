class roles::hostmaster inherits roles::server {

  sudo::conf { 'aegir':
    content => 'aegir ALL=(ALL) NOPASSWD: ALL',
  }

  class { '::profiles::mysql': }

  class { '::profiles::aegir':
      require => Class['::profiles::mysql']
  }


}