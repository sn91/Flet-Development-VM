# TODO: Configure autologin for Ubuntu
# TODO: Try to start a basic flet gui application in the VM
Vagrant.configure("2") do |config|
  #config.vm.box = "hashicorp/precise64"
  config.vm.box = "gusztavvargadr/ubuntu-desktop-2404-lts"
  config.vm.provider "virtualbox" do |vm|  
  vm.gui = true
  config.vm.provision "shell", privileged: false, path: "flet_setup.sh"
  end
end

