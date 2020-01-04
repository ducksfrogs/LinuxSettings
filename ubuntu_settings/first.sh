#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install zsh curl vim tmux git xclip ssh  libxml2-dev -y

cp settings/tmux.conf ~/.tmux.conf


