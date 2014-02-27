class htop::params {
  $ensure       = present
  $default_conf = true
  $rcfile       = 'puppet:///modules/htop/htoprc'
  $replace      = false
}
