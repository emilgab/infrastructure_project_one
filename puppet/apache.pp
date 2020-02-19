package { 'apache2':
        ensure => present,
        notify => Service['apache2'],
}

service { 'apache2':
        ensure => running,
        enable => true,
        hasrestart => true,
        require => Package['apache2'],
}
