#!/bin/bash
mkdir ~/.config/nvim
touch ~/.config/nvim/init.lua

echo "require('config.lazy')" > ~/.config/nvim/init.lua

mkdir -p ~/.config/nvim/lua/config
cp ./lazy.lua ~/.config/nvim/lua/config
