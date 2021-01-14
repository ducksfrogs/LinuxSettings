#!/bin/bash

sudo apt update

sudo apt install ocl-icd-libopencl1
sudo apt install ocl-icd-opencl-dev
sudo apt install libboost-dev
sudo apt install libboost-system-dev
sudo apt install libboost-filesystem-dev

git clone --recursive https://github.com/microsoft/LightGBM ; cd LightGBM
mkdir build ; cd build
cmake -DUSE_GPU=1 ..
make -j4
