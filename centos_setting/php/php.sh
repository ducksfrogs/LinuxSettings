#!/bin/bash

sudo yum -y update 
sudo yum install epel-release
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

sudo yum install --enablerepo=remi,remi-php56 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt

sudo yum install --enablerepo=remi-php56,remi,epel install php-fpm
