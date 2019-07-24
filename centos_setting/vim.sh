#!/bin/bash

sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip

mkdir ~/tmp
cd ~/tmp

git clone https://github.com/neovim/neovim.git

cd neovim
make 

sudo make install

