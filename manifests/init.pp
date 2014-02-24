class htop (
    $ensure = $htop::params::ensure,
  ) inherits htop::params {

  package { 'htop':
    ensure => $ensure,
  }

}
