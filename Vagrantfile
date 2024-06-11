# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  #config.vm.box = "hashicorp/precise64"
  config.vm.box = "gusztavvargadr/ubuntu-desktop"
  config.vm.provider "virtualbox" do |vm|  
  vm.gui = true
  config.vm.provision "shell", privileged: false, path: "flet_setup.sh"
  end
end
