class php::config {
	file {'/var/www/html/':
		ensure	=> link,
		force	=> true,
		target	=> "/vagrant/src",
	}
	->
	exec {'replace_conf_apache':
		command	=> "/bin/sed -i '/AllowOverride None/c AllowOverride All' /etc/httpd/conf/httpd.conf",
	}
	->
	exec {'restart_apache':
		command	=> "/etc/init.d/httpd restart",
	}
}
