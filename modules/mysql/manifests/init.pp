class mysql {
	class {'mysql::packages':}
	->
	class {'mysql::service':}
	->
	class {'mysql::config':}

}
