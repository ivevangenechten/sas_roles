class roles::buildserver inherits roles::server {
  include profiles::jenkins
}