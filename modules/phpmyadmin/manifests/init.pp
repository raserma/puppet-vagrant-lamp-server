class phpmyadmin {
	class {'phpmyadmin::packages':}
	->
	class {'phpmyadmin::config':}
}
