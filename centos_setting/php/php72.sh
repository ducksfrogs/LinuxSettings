#!/bin/bash
sudo  yum install epel-release
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update 
sudo yum install --enablerepo=remi,remi-php72 php -y
sudo yum install --enablerepo=remi-php72,remi,epel install php-fpm -y
sudo yum install --enablerepo=remi,remi-php72 php php-mysql php-mbstring php-gd -y

sudo systemctl start php-fpm
sudo systemctl enable php-fpm

