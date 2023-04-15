#!/bin/bash

mkdir ~/tmp
cd ~/tmp

git clone https://github.com/neovim/neovim.git

cd neovim
make
sudo make install
