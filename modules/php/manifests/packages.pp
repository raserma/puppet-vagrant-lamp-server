class php::packages {
	$packages	= [
		"php",
		"php-mysql",
		"php-common",
		"php-gd",
		"php-mbstring",
#		"php-mcrypt",
		"php-devel",
		"php-xml",
	]
	package { $packages: 
		ensure	=> present,
	}
	
}
