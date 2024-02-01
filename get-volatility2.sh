#!/bin/bash


# install python2.7 and python2-dev in user home directory
cd ~/
echo "Please enter password when prompted."
sudo apt update
sudo apt install python2 python2-dev

# download pip2 and install
clear
echo "Python2 installed! Setting up Pip2 package manager..."
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2 get-pip.py

# pip2 upgrade for setuptools
clear
echo "Pip2 installation complete! Installing pip2 packages..."
pip2 install --upgrade setuptools
pip2 install pycrypto
pip2 install distorm3

# clone volatility repo and install
clear
echo "Packages installed! Setting up Volatility 2..."
git clone https://github.com/volatilityfoundation/volatility
cd volatility
sudo python2 setup.py install
clear
echo "Finished. Run 'vol.py -h' to see options.