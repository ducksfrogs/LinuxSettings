#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install zsh curl vim tmux git xsel ssh  libxml2-dev -y

sudo apt install libxml2-dev libcurl4-openssl-dev libssl-dev

cp settings/tmux.conf ~/.tmux.conf
