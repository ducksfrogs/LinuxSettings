#!/bin/bash

sudo cp settings/nginx.repo /etc/yum.repos.d/
sudo yum -y --enablerepo=nginx install nginx

sudo yum -y update 


sudo systemctl start nginx
sudo systemctl enable nginx





