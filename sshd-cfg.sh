#!/bin/bash

#FIXME: check for existence of publickeys or authorized keys before running whole script
# check for sshd config backup and create one if none found
if [ ! -e /etc/ssh/sshd_config.BAK ]
then
    echo "Backing up config file..."    
    cp /etc/ssh/sshd_config{,.BAK}
fi

# quick assignment
sshd_cfg="/etc/ssh/sshd_config"

# Make alterations to sshd configuration file [FIXME: remove flags once successful]
#sed -ie 's/^#PermitRootLogin prohibit-password/PermitRootLogin no# flag1/' $sshd_cfg    
sed -ie 's/^#PasswordAuthentication yes/PasswordAuthentication no# flag2/' $sshd_cfg
sed -ie 's/^#ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no# flag1/' $sshd_cfg
sed -ie 's/^UsePAM yes/UsePAM no#flag3/' $sshd_cfg
#sed -ie 's/^ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/' $sshd_cfg
#[FIXME]: find the final line in the sshd_config file and use 'sed' to append the above line *BELOW* it using '\n'

# Reload SSHD
echo "Applying changes..."
systemctl reload sshd


