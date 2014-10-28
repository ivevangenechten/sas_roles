class roles::dp2web inherits roles::server {

  include profiles::apache
  include profiles::php5

}