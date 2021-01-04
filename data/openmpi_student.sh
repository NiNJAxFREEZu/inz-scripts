#!/bin/bash
#on client --LAN Interface --IP (new) --netmask
sudo apt install mpich nfs-client openssh-server ssh_askpass hydra --yes

#ip interfejsow do wpisania /etc/hosts do wpisania przy przejsciu na vagranta

#w ~home robię /mirror, folder share'owany przez nfs
cd ~
sudo mkdir /mirror

sudo mount master:/mirror /mirror

#stwarzam usera z homedir w /mirror, żeby nie musieć klucza ssh przerzucać z clientów na mastera
sudo useradd --home /mirror mpiuser
echo "mpiuser:a" | sudo chpasswd
