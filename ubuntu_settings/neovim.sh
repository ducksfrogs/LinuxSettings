#!/bin/bash
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
mkdir ~/tmp
cd ~/tmp

git clone https://github.com/neovim/neovim.git

cd neovim
make
sudo make install
