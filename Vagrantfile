# TODO: Configure autologin for Ubuntu
# TODO: Try to start a basic flet gui application in the VM
Vagrant.configure("2") do |config|
  #config.vm.box = "hashicorp/precise64"
  config.vm.box = "gusztavvargadr/ubuntu-desktop-2404-lts"
  config.vm.provider "virtualbox" do |vm|  
  vm.gui = true
  # To have a smooth developer experience we enabled autologin
  # TODO : Disable automatic screensaver
  config.vm.provision "shell", privileged: true, inline: "sed -i -e 's/#  AutomaticLoginEnable = true/AutomaticLoginEnable = true/' /etc/gdm3/custom.conf"
  config.vm.provision "shell", privileged: true, inline: "sed -i -e 's/#  AutomaticLogin = user1/AutomaticLogin = vagrant/' /etc/gdm3/custom.conf"
  config.vm.provision "shell", privileged: true, inline: "sed -i -e 's/#  TimedLoginEnable = true/TimedLoginEnable = true/' /etc/gdm3/custom.conf"
  config.vm.provision "shell", privileged: true, inline: "sed -i -e 's/#  TimedLogin = user1/TimedLogin = vagrant/' /etc/gdm3/custom.conf"
  config.vm.provision "shell", privileged: true, inline: "systemctl daemon-reload"
  config.vm.provision "shell", privileged: true, inline: "systemctl restart gdm3"
  config.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install libmpv-dev libmpv2
      sudo ln -s /usr/lib/x86_64-linux-gnu/libmpv.so /usr/lib/libmpv.so.1
    SHELL
  config.vm.provision "shell", privileged: false, path: "flet_setup.sh"
  end
end

