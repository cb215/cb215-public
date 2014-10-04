#!/bin/bash
yum update
yum groupinstall "Development tools"
yum -y install python27
yum -y install gcc-c++ python27-devel atlas-sse3-devel lapack-devel
#Matplotlib dependencies
yum -y install libpng-devel freetype-devel
#X11 forwarding
yum -y install xorg-x11-xauth.x86_64 xorg-x11-server-utils.x86_64
# Python pip and virtualenv
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python27
easy_install-2.7 pip
pip2.7 install virtualenv
#Setup swap space for install compilations
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sudo /sbin/mkswap /var/swap.1
sudo chmod 600 /var/swap.1
sudo /sbin/swapon /var/swap.1
