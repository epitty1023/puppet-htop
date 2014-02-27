class htop (
    $ensure       = $htop::params::ensure,
    $default_conf = $htop::params::default_conf,
  ) inherits htop::params {

  package { 'htop':
    ensure => $ensure,
  }

  if $default_conf {
    htop::config { 'root': }
  }

}
