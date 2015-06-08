# example 1
# standard user
user { 'ani' :
 ensure => present,
 shell => '/bin/bash',
 managehome => yes,
 comment => 'Ani Juga',
 password => '$1$RQVI1gQL$V8DCkOeyBo.49dCE4DyCE0'
}

# example 2
# resource title is not always username, but can be passwd to 'name'
user { 'budiBC' :
 name => budi,
 ensure => present,
 shell => '/bin/bash',
 managehome => yes,
 comment => 'Budi Juga',
}

# example 3
# define her group too
user { 'Cita':
 name => 'cinta',
 ensure => present,
 shell => /bin/ksh,
 managehome => yes,
 groups => [ 'sudo', 'admin', 'developer' ],
}

ssh_authorized_key { 'ani_ssh1':
 user => 'ani',
 type => 'ecdsa-sha2-nistp256',
 key  => 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIsT232WPROxL+Sid0lIr96uOk0rl/Rp6YVrQZNkwBLIa9OJXAk55QDoyFePvRc0xxevKCbcZbmVG2kpm6zsSgM='
 }