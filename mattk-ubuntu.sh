#!/bin/bash

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y openjdk-8-jre-headless openjdk-11-jre-headless openjdk-16-jre-headless nut-client samba nut git make npm nfs-common htop net-tools lm-sensors apt-transport-https software-properties-common wget gdebi-core libgl1-mesa-glx:i386 ubuntu-desktop-minimal && sudo apt upgrade -y
echo " Packages & System Upgraded "

# Rebooting host
sudo reboot now
