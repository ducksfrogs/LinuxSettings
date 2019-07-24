#!/bin/bash


sudo firewall-cmd --add-service=https --zone=public --permanent
sudo firewall-cmd --add-service=http --zone=public --permanent
sudo firewall-cmd --reload



