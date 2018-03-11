install_nodejs.sh# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.ssh.insert_key = true
  # main
  config.vm.define "main" do |main|
    # Set Image
    main.vm.box = "ubuntu/xenial64"
    main.disksize.size = "100GB"
    main.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.gui = true
      vb.customize [
        "modifyvm", :id,
        "--vram", "256",
        "--accelerate3d", "on",
      ]      
    end
    main.vm.network "private_network", ip: "10.56.0.11", virtualbox__intnet: "local"
    main.vm.network "private_network", ip: "10.33.0.11"
    main.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    main.vm.provision :shell, :path => "./shell/useradd.sh"
    main.vm.provision :shell, :path => "./shell/install_python.sh"
    main.vm.provision :shell, :path => "./shell/install_pip.sh"
    main.vm.provision :shell, :path => "./shell/install_ansible.sh"
    main.vm.provision :shell, :path => "./shell/install_ubuntu_desktop.sh"
    main.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
    main.vm.provision :shell, :path => "./shell/install_chrome.sh"
    main.vm.provision :shell, :path => "./shell/install_nodejs.sh"
  end
  # sandbox01
  config.vm.define "sandbox01" do |sandbox01|
    # Set Image
    sandbox01.vm.box = "ubuntu/xenial64"
    sandbox01.disksize.size = "100GB"
    sandbox01.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
    sandbox01.vm.network "private_network", ip: "10.56.0.101", virtualbox__intnet: "local"
    sandbox01.vm.network "private_network", ip: "10.33.0.101"
    sandbox01.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    sandbox01.vm.provision :shell, :path => "./shell/useradd.sh"
    sandbox01.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
  end
  # redis01
  config.vm.define "redis01" do |redis01|
    # Set Image
    redis01.vm.box = "ubuntu/xenial64"
    redis01.disksize.size = "100GB"
    redis01.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
    redis01.vm.network "private_network", ip: "10.56.11.11", virtualbox__intnet: "local"
    redis01.vm.network "private_network", ip: "10.33.11.11"
    redis01.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    redis01.vm.provision :shell, :path => "./shell/useradd.sh"
    redis01.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
    redis01.vm.provision :shell, :path => "./shell/install_redis-server.sh"
  end
end