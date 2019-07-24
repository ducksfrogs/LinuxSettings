#!/bin/bash

sudo yum -y update 
sudo yum -y install httpd php mariadb mariadb-server php-mbstring php-mysql 


sudo ln -s /usr/bin/perl /usr/local/bin/perl

sudo chown httpd. /var/www/html

sudo systemctl start httpd
sudo systemctl enable httpd

sudo systemctl start mariadb
sudo systemctl enable mariadb





