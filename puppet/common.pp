$people = [ 'tom', 'brady', 'janet' ]
$groups = [ 'webadmins','sudo' ]

# must be run with the future parser: puppet apply --parser future --noop common.pp
each($people) |$user| {
        user { "$user":
                ensure => present,
                password => '$1$WDW0AeF1$kAQNNYlIKZ6RbqpEiPAct0',
                shell => '/bin/bash',
                home => "/home/$user",
                require => File["/home/$user"],
                groups => $groups,
        }
        file { "/home/$user":
                ensure => directory
        }
}

group { 'webadmins' :
        ensure => present,
        gid => 501,
}
