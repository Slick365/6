Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu.box"
  config.vm.network "forwarded_port", guest: 80, host: 81, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.56.7"
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end
  vg_config.vm.provision :shell, path: "vagrant_bootstrap.sh"
end