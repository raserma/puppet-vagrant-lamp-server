# -*- mode: ruby -*-
# vi: set ft=ruby :
# Vagrant file for development purposes

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
    config.vm.define "centos64_puppet", primary: true do |centos64_puppet|
    centos64_puppet.vm.box = "centos6.4_puppet"
    centos64_puppet.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"
    centos64_puppet.vm.network "forwarded_port", guest: 80, host: 8080

    centos64_puppet.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "site.pp"
      puppet.module_path = "modules"
      puppet.options = "--verbose --debug"
    end
  end
end

