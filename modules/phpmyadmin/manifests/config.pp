class phpmyadmin::config {
	Exec {
                path            => ['/sbin', '/bin', '/usr/sbin', '/usr/bin'],
                logoutput       => true,

        }
	exec {'override_conf1':
		command		=> "sed -i '/Deny from All/c Allow from All' /etc/httpd/conf.d/phpMyAdmin.conf",
	}
	->
	exec {'override_conf2':
		command		=> "sed -i '/Allow from None/c Allow from All' /etc/httpd/conf.d/phpMyAdmin.conf",
	}
	->
	exec {'override_conf3':
		command		=> "sed -i '/Order Deny,Allow/c Order Allow,Deny' /etc/httpd/conf.d/phpMyAdmin.conf",
	}
	->
	exec {'restart_apache':
		command		=> "/etc/init.d/httpd restart",
	}
}
