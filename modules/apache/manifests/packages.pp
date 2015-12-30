class apache::packages {
	Exec {
        	path		=> ['/sbin', '/bin', '/usr/sbin', '/usr/bin'],
		logoutput	=> true,

   	}
	/*exec{"update":
		command		=> "yum update -y",
	}
	->*/
	package {"httpd":
		ensure => present,
	}
	->
	package {"httpd-devel":
		ensure => present,
	}
	
}
