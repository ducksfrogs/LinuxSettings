#!/bin/bash

sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip -y


mkdir ~/tmp

cd ~/tmp

git clone https://github.com/neovim/neovim.git

cd neovim

make

sudo make install
