$people = [ 'tom', 'brady', 'janet' ]

user { $people :
	ensure => present,
	groups => 'webadmins',
}

group { 'webadmins' :
	ensure => present,
	gid => 0,
}
