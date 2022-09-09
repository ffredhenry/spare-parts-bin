#!/bin/bash

# should be ran as root since files are created/manipulated

# create an original file
echo "Restoring original copy of SSH Daemon config"
cp /etc/ssh/sshd_config.ORIG /etc/ssh/sshd_config
