class apache::service {
	service {'httpd':
		ensure		=> running,
		enable		=> true,
		hasrestart	=> true,
		require		=> Class['apache::packages'],
		subscribe	=> Class['apache::config'],
	}
}
