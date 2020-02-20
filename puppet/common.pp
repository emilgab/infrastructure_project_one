$groups = [ 'webadmins','sudo' ]

group { 'webadmins' :
  ensure => present,
  gid => 501,
}

user { 'tom' :
  ensure => present,
  groups => $groups,
}

user { 'brady' :
  ensure => present,
  groups => $groups,
}

user { 'janet' :
  ensure => present,
  groups => $groups,
}
