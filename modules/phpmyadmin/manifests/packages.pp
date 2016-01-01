class phpmyadmin::packages {
	package {'epel-release':
		ensure	=> present,
	}	
	->
	exec {'override_mirrorlist':
		command	=> "/bin/sed -i 's/mirrorlist=https/mirrorlist=http/' /etc/yum.repos.d/epel.repo",
	}
	->
	package {'phpMyAdmin':
		ensure	=> present,
		require => Package["php", "php-mysql", "httpd"],
	}
}
