class mysql {
	class {'mysql::packages':}
	->
	class {'mysql::config':}
	->
	class {'mysql::service':}


}
