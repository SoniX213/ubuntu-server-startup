#!/bin/bash

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y openjdk-8-jre-headless openjdk-11-jre-headless openjdk-16-jre-headless nut-client samba nut git make npm nfs-common htop net-tools lm-sensors apt-transport-https software-properties-common wget gdebi-core libgl1-mesa-glx:i386 ubuntu-desktop-minimal && sudo apt upgrade -y
echo " Packages & System Upgraded "

wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb
sudo gdebi ~/steam.deb
echo " Steam Installed "

bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable-channel
echo " Netdata Installed"

# Rebooting host
sudo reboot now
