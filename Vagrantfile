# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.ssh.insert_key = true
  # main
  config.vm.define "main" do |main|
    # Set Image
    main.vm.box = "ubuntu/xenial64"
    main.disksize.size = "100GB"
    main.vm.provider "virtualbox" do |vb|
      vb.memory = 8192
      vb.gui = true
      vb.customize [
        "modifyvm", :id,
        "--vram", "256",
        "--accelerate3d", "off",
      ]      
    end
    main.vm.network "private_network", ip: "10.56.0.11", virtualbox__intnet: "local"
    main.vm.network "private_network", ip: "10.33.0.11"
    main.vm.network "public_network"
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
    main.vm.provision :shell, :path => "./shell/install_vscode.sh"
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
  # mysql5.7
  config.vm.define "mysql57" do |mysql57|
    mysql57.vm.box = "ubuntu/xenial64"
    mysql57.vm.network "private_network", ip: "10.56.0.31", virtualbox__intnet: "local"
    mysql57.vm.network "private_network", ip: "10.33.0.31"
    mysql57.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    mysql57.vm.provision :shell, :path => "./shell/useradd.sh"
    mysql57.vm.provision :shell, :path => "./shell/install_python.sh"
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
  # nginx01
  config.vm.define "nginx01" do |nginx01|
    # Set Image
    nginx01.vm.box = "ubuntu/xenial64"
    nginx01.disksize.size = "100GB"
    nginx01.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
    nginx01.vm.network "private_network", ip: "10.56.21.11", virtualbox__intnet: "local"
    nginx01.vm.network "private_network", ip: "10.33.21.11"
    nginx01.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    nginx01.vm.provision :shell, :path => "./shell/useradd.sh"
    nginx01.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
    nginx01.vm.provision :shell, :path => "./shell/install_nginx.sh"
  end
  # squid01
  config.vm.define "squid01" do |squid01|
    # Set Image
    squid01.vm.box = "ubuntu/xenial64"
    squid01.disksize.size = "100GB"
    squid01.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
    squid01.vm.network "private_network", ip: "10.56.31.11", virtualbox__intnet: "local"
    squid01.vm.network "private_network", ip: "10.33.31.11"
    squid01.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    squid01.vm.provision :shell, :path => "./shell/useradd.sh"
    squid01.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
    squid01.vm.provision :shell, :path => "./shell/install_squid3.sh"
  end
end