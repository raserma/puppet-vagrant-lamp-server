class apache::config {
	Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }

	exec { 'servername':
		command		=> "/bin/echo "ServerName 127.0.0.1:8080" >> /etc/httpd/conf/httpd.conf",
		require		=> Class [apache::packages],		
	}
}
