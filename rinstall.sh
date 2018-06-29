#!/bin/bash
#basic setup
#from https://blog.drewolson.org/so-you-bought-a-pixelbook/
sudo apt-get update \
sudo apt-get install zsh -y \
sudo echo deb http://ftp.debian.org/debian stretch-backports main >> /etc/apt/sources.list
sudo apt-get update \
sudo apt-get install -t stretch-backports tmux -y \

#change hostname of container
sudo sed -i "s/127\.0\.1\.1.*/127\.0\.1\.1\t${newname}/" /etc/hosts
sudo hostnamectl set-hostname crostini ; \

#install R
sudo apt install dirmngr -y \
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' \
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' \
sudo apt-get update -y \
sudo apt-get install r-base -y \

#install R studio server
sudo apt-get install gdebi-core -y \
sudo apt-get install wget -y \
wget https://download2.rstudio.org/rstudio-server-stretch-1.1.453-amd64.deb -y \
sudo gdebi rstudio-server-stretch-1.1.453-amd64.deb -y \

#install python tools
sudo apt-get install idle -y

