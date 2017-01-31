VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.50.20"
  config.vm.hostname = "phalcon.dev"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  # Ansible
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "vagrant-ansible/playbook.yml"
  end
end
