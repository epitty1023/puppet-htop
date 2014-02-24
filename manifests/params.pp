class htop::params {
  $ensure  = present
  $rcfile  = 'puppet:///modules/htop/htoprc'
  $replace = false
}
