# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "CentOS 6.4 x86_64 Minimal (VirtualBox Guest Additions 4.3.2, Chef 11.8.0, Puppet 3.3.1)"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box"
  config.vm.network :forwarded_port, host: 3000, guest: 3000

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.json = {
      :nodejs => { :version => '0.10.25' }
    }
    chef.add_recipe "nodejs"
    chef.add_recipe "forever"
    chef.add_recipe "git"
  end

end
