# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/arch"

  config.vm.synced_folder ".", "/vagrant"
  config.vm.synced_folder "../Shared", "/home/vagrant/Shared"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "archBox"
    vb.gui = true
    vb.cpus = "16"
    vb.memory = "49153"
    config.vm.provision "archBox_provision", type: "shell", path: "bootstrap.sh"
  end
 
end
