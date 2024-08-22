#!/bin/bash

sudo mv /etc/apt/sources.list /etc/apt/sourseces.list.bk
sudo cp sources.list /etc/apt/
sudo apt update
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor
sudo apt update
sudo apt upgrade -y
sudo apt install virtualbox-7.0
