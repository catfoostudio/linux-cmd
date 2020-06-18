#!/bin/sh

#use for ubuntu 18.04 add 1G for swap space

#Creating a swap file
sudo fallocate -l 1G /swapfile

#Enabling the swap file
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

#Making the swap file permanent
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

#Tuning swap setting
sudo sysctl vm.swappiness=10
sudo sysctl vm.vfs_cache_pressure=50
swappiness="vm.swappiness=10"
vfs_cache_pressure="vm.vfs_cache_pressure=50"
swapconfig="\n$swappiness\n$vfs_cache_pressure"
sudo echo -e "$swapconfig" >> /etc/sysctl.conf