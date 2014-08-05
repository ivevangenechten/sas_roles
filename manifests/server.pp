class roles::server {
  include profiles::apt
  include profiles::nano
  include profiles::ntp
  include profiles::snmp
  include profiles::vim
}