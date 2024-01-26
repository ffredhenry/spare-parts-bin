#!/bin/sh

# Security onion for Ubuntu 20.04 installs
# DONT RUN AS ROOT but enter password when prompted

# prereqs here
sudo apt install curl ethtool

# clone the repo
git clone https://github.com/Security-Onion-Solutions/securityonion

#move into repo 
cd securityonion

#start security onion install
sudo bash so-setup-network
