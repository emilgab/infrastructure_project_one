$groups = [ 'webadmins','sudo' ]
$people = [ 'tom', 'brady', 'janet' ]

group { 'webadmins' :
  ensure => present,
  gid => 501,
}

user { $people :
  ensure => present,
  groups => $groups,
}
