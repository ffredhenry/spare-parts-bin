#!/bin/bash

# SSH config backup script - should be ran as root since files are being written

echo "SSHD config backup script"

echo "Checking for original copy of SSHD config..."

sleep 2

# check for original copy of SSHD config, if none make a copy using .ORIG
if [ ! -e /etc/ssh/sshd_config.ORIG ]
then
        echo "Original config does not exist, creating..."
        cp /etc/ssh/sshd_config{,.ORIG}
fi

echo "Checking for backup copy of SSHD config..."

sleep 1

# check for backup copy of SSHD config, if none make a copy using .BACK
#if [ ! -e /etc/ssh/sshd_config.BACK ]
#then
echo "creating Backup config ..."
cp /etc/ssh/sshd_config{,.BACK}
#fi

echo "SSHD config file has been backed up, exiting..."

#FIXME: create three "switches"
# one to run the backup protocol
# another to run the restore protocol
# and the other to run the reset protocol

# should prompt the user if copies of ORIG and BACK config files are detected
