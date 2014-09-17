class roles::buildserver inherits roles::server {

  sudo::conf { 'aegir':
    content => 'aegir ALL=(ALL) NOPASSWD: ALL',
  }

  include profiles::java
  include profiles::jenkins

}