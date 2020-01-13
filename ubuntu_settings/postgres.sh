#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install postgres pgadmin3 -y

#pgadmin4

sudo apt-get install curl ca-certificates gnupg -y
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

