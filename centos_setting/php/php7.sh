#!/bin/bash
sudo  yum install epel-release -y
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm 
sudo sudo sudo yum -y update  
sudo yum install --enablerepo=remi,remi-php71 php php-fpm php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt php-zip php-intl php-mysql
