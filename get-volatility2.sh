#!/bin/bash


# install python2.7 and python2-dev
cd ~/
echo "Please enter password when prompted."
sudo apt update
sudo apt install python2
sudo apt install python2-dev

# download pip2 and install
clear
echo "Setting up 'Scripts' environment..."
mkdir Scripts
cd Scripts

wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sleep 2
echo "Installing pip2 from script..."
sudo python2 get-pip.py

# pip2 upgrade for setuptools
clear
echo "Installing pip2 packages..."
pip2 install --upgrade setuptools
pip2 install pycrypto
pip2 install distorm3

# clone volatility repo and install
echo "Setting up Volatility 2..."
cd ~/
git clone https://github.com/volatilityfoundation/volatility
cd volatility
sudo python2 setup.py install
