node default{
	stage {[apache, mysql, php, phpmyadmin]:}
	Stage[apache] -> Stage[mysql] -> Stage[php] -> Stage[phpmyadmin]
	class { 'apache':
		stage	=> apache,
	}
	class { 'mysql':
		stage	=> mysql,
	}
	class { 'php':
		stage	=> php,
	}
	class { 'phpmyadmin':
		stage	=> phpmyadmin,
	}
}  
