#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install postgres pgadmin3 -y

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql

#pgadmin4

sudo apt-get install curl ca-certificates gnupg -y
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

