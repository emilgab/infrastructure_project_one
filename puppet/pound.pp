package { 'pound':
  ensure => present,
  notify => Service['pound'],
}

service { 'pound':
  ensure => running,
  enable => true,
  hasrestart => true,
  require => Package['pound'],  
}
