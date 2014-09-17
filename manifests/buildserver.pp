class roles::buildserver inherits roles::server {

  include profiles::java
  include profiles::jenkins

}