#! /usr/bin/env bash

# For ubuntu only
# sudo apt install automake autoconf flex bison gperf libtool libtool-bin texinfo -y

# currently the latest version is v6.6.3
# https://www.gnu.org/software/global/download.html
sudo echo "Installing gtags..."
wget -c http://tamacom.com/global/global-6.6.3.tar.gz
tar -xf global-6.6.3.tar.gz
cd global-6.6.3
sh reconf.sh
./configure
make
sudo make install
sudo pip3 install pygments
cd ..
rm -rf global-6.6.3.tar.gz
rm -rf global-6.6.3