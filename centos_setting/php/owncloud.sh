#!/bin/bash
sudo rpm --import https://download.owncloud.org/download/repositories/10.0/CentOS_7/repodata/repomd.xml.key
sudo wget http://download.owncloud.org/download/repositories/10.0/CentOS_7/ce:10.0.repo -O /etc/yum.repos.d/ce:10.0.repo
sudo yum clean expire-cache -y
sudo yum install owncloud-files -y
