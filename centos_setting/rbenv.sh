#!/bin/bash

sudo yum install -y git gcc gcc-c++ openssl-devel readline-devel

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
echo 'eval "$(rbenv init -)"' >> ~/.zshenv

source ~/.zshenv


