class apache::config {
	Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }
	
	file {'iptables':
		ensure		=> present,
		path		=> "/etc/sysconfig/iptables",
		content		=> template('apache/iptables.erb'),
		
	}
	->
	exec { 'iptables-restart':
                command         => "/sbin/service iptables restart",
                require         => Class [apache::packages],
                subscribe       => File ["/etc/sysconfig/iptables"],
        }
	->
	exec { 'servername':
		command		=> "/bin/echo 'ServerName 127.0.0.1:8080' >> /etc/httpd/conf/httpd.conf",
		require		=> Class [apache::packages],		
	}
}
