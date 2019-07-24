#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install sudo guake zsh curl vim aptitude tmux git xclip ssh -y




cp settings/tmux.conf ~/.tmux.conf

./neovim.sh

