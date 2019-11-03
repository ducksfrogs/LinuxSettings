#!/bin/bash

sudo apt-get install curl ca-certificates gnupg
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo cd /etc/apt/sources.list.d/
sudo touch pgdg.list

# echo 'deb http://apt.postgresql.org/pub/repos/apt bianic-pgdg main' >pgdg.list

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

sudo apt-get update
sudo apt-get istall postgresql-11 pgadmin4
