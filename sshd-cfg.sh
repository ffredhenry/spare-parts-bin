#!/bin/bash

#echo $1 > $2 [FIXME]: use this logic to enabled configure and backup options

#if [ $1 = "--backup" ]
#then
#	echo "backup flag selected"
#elif [ $1 = "--configure" ]
#then
#	echo "config file selected"
#else
#	echo "please choose a valid option"
#fi

# check for sshd config backup and create one if none found
if [ ! -e /etc/ssh/sshd_config.backup ]
then
    echo "Backing up config file..."    
    cp /etc/ssh/sshd_config.backup{,.backup}
fi

# quick assignement
sshd_cfg="/etc/ssh/sshd_config"

# Make alterations to sshd configuration file [FIXME: remove flags once successful]
sed -ie 's/^#PermitRootLogin prohibit-password/PermitRootLogin no# flag1/' $sshd_cfg    
sed -ie 's/^#PasswordAuthentication yes/PasswordAuthentication no# flag2/' $sshd_cfg
sed -ie 's/^UsePAM yes/UsePAM no#flag3/' $sshd_cfg
#sed -ie 's/^ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/' $sshd_cfg
#[FIXME]: find the final line in the sshd_config file and use 'sed' to append the above line *BELOW* it using '\n'

# Reload SSHD
echo "Applying changes..."
systemctl reload sshd


