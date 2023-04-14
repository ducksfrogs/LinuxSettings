#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install zsh curl vim tmux git xsel ssh gettext -y


cp settings/tmux.conf ~/.tmux.conf
