class apache {
	class {'apache::packages':}
	->
	class {'apache::config':}
	->
	class {'apache::service':}


}
