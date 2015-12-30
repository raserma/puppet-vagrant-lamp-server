class mysql::packages {
	package { 'mysql':
		ensure => present,
	}
	->
	package { 'mysql-server': 
                ensure => present, 
        }
	->
	package { 'mysql-devel': 
                ensure => present, 
        }
}
