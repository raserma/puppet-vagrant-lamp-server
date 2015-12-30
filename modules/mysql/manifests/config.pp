class mysql::config {
	$mysqlpasswdroot	= "1234"
	$mysqlpasswdguest	= "guest"

	Exec 
	{
  		path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
	}

	exec {'set-mysql-root-password':
		unless	=> "mysqladmin -uroot -p$mysqlpasswdroot status",
		command	=> "mysqladmin -uroot password $mysqlpasswdroot",
		require	=> Class["mysql::service"],	
	}
	->
	exec {'flush-privileges':
                command => "mysql -u root -p$mysqlpasswdroot -e 'FLUSH PRIVILEGES';",
		require => Class["mysql::service"],
        }
	->
	exec {'create-user-guest':
                command => "mysql -u root -p$mysqlpasswdroot -e \"USE mysql; create database demo; GRANT ALL PRIVILEGES ON demo.* TO 'guest'@'localhost' IDENTIFIED BY 'guest' WITH GRANT OPTION; UPDATE user SET Password=PASSWORD('$mysqlpasswdguest') WHERE user='guest';\"",
		require => Class["mysql::service"],
        }
	->
	exec {'restart-mysqld':
		command	=> "/etc/init.d/mysqld restart",
	}
}
