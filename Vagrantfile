Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
#  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provision "shell", path: "provision.sh"

  config.vm.synced_folder "../../projects/", "/projects", type: "rsync", rsync__exclude: ".git/"


	config.vm.provider "virtualbox" do |v|
		v.memory = 2048
		v.cpus = 4
	end

end
