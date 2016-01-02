Vagrant LAMP stack
==================
It creates a simple LAMP (Linux, Apache, MySQL, PHP) stack on Vagrant by using Puppet provisioning tool.

Vagrant is an open-sourice tool that creates and configures virtual development environments, in a quick and easy-to-use way.

Requirements
------------
* VirtualBox
* Vagrant
* Git

Usage
-----

### Setup
```bash
	$ git clone git@github.com:raserma/puppet-vagrant-lamp-server.git
	$ cd puppet-vagrant-lamp-server
	$ vagrant up
	$ vagrant ssh
```
### Connection

#### Apache
Apache server is available at [http://localhost:8080](http://localhost:8080)

#### MySQL
username: root
password: 1234

username: guest
password: guest
#### PHP
Make a change to `./src/init.php`, save it and reload the page. You will see the change inmediately.

The `./src` directory is setup as the web document root. Any changes made under this folder will be instantly changed in your browser, after reloading the page [localhost:8080/init.php](http://localhost:8080/init.php).

#### phpMyAdmin
phpMyAdmin is available at [localhost:8080/phpMyAdmin](http://localhost:8080/phpMyAdmin)

Technical Details
-----------------
* Cent0S 6.4 64 bit
* Apache/HTTPD
* PHP 5.1.6
* MySQL 5.1
* phpMyAdmin tool
* Puppet 3.3.1


