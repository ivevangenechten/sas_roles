class roles::puppetmaster inherits roles::server {

  #include puppetdb
  #include puppetdb::master::config

}