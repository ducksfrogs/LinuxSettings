sudo aptitude update

sudo aptitude -r install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-driver

sudo apt-get update

sudo apt-get -t stretch-backports nvidia-driver
