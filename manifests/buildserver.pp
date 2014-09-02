class roles::buildserver inherits roles::server {
  include profiles::java
  include profiles::jenkins

  sshkeys::sshclient { 'jenkins': user => "jenkins", }

}