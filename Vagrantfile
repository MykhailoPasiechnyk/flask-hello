# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"

  config.vm.define "master-node" do |mn|
    mn.vm.hostname = "master-node"
    mn.vm.network "private_network", ip: "192.168.11.32"

    mn.vm.provider "virtualbox" do |vb|
      vb.name = "master-node"
      vb.memory = 2048
    end

    mn.vm.provision "shell", path: "scripts/install-docker.sh"
    mn.vm.provision "shell", path: "scripts/install-kubernetes.sh"
    mn.vm.provision "shell", path: "scripts/kube-master.sh"

  end

  config.vm.define "node" do |node|
    node.vm.hostname = "node"
    node.vm.network "private_network", ip: "192.168.11.33"

    node.vm.provider "virtualbox" do |vb|
      vb.name = "node"
      vb.memory = 2048
    end

    node.vm.provision "shell", path: "scripts/install-docker.sh"
    node.vm.provision "shell", path: "scripts/install-kubernetes.sh"
    node.vm.provision "shell", path: "kubeadm-join.sh"

  end


end
