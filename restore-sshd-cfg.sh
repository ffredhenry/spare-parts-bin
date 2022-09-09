#!/bin/bash

# this should be ran with elevated privileges

# restoring from backup
echo "Restoring backup ssh config"

cp /etc/ssh/sshd_config.BACK /etc/ssh/sshd_config

sleep 1

echo "Complete."
