class roles::puppetmaster inherits roles::server {

# Configure puppetdb and its underlying database
  class { 'puppetdb': }

  package { 'ruby-puppetdb-foreman':
    ensure => present,
  }

}