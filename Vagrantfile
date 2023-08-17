# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

role = File.basename(File.expand_path(File.dirname(__FILE__)))

boxes = [
  {
    :name => "ubuntu-2004",
    :box => "jharoian3/ubuntu-20.04-arm64",
    :ip => '10.0.0.14',
    :cpu => "50",
    :ram => "1024"
  },
  # {
  #   :name => "ubuntu-2204",
  #   :box => "jharoian3/ubuntu-22.04-arm64",
  #   :ip => '10.0.0.15',
  #   :cpu => "50",
  #   :ram => "1024"
  # },
]

Vagrant.configure("2") do |config|
  boxes.each do |box|
    config.vm.define box[:name] do |vms|
      vms.vm.box = box[:box]
      vms.vm.hostname = "ansible-#{role}-#{box[:name]}"

      vms.vm.provider "parallels" do |v|
        v.memory = box[:ram]
      end

      vms.vm.network "private_network", ip: box[:ip]

      vms.vm.provision :ansible do |ansible|
        ansible.playbook = "tests/vagrant-ubuntu.yml"
        ansible.verbose = "vv"
      end
    end
  end
end