class roles::puppetmaster inherits roles::server {

# Configure puppetdb and its underlying database
  class { 'puppetdb': }
# Configure the puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}