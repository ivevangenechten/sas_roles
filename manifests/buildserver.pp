class roles::buildserver inherits roles::server {
  include profiles::java
  include profiles::jenkins

  sshkeys::sshclient { 'jenkins': user => "jenkins", }
  sshkeys::sshserver { 'aegir': user => "aegir", }
  sshkeys::sshserver { 'jenkins': user => "jenkins", }

}