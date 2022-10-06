# spare-parts-bin
Collection of various scripts I have found useful for working in and around operating systems

### sshd config scripts suite
Three scripts for performing the following:
1. Creating backups of the current *sshd* config (with an additional copy created to serve as the initial post-install configuration).
2. Restoring the backup config file to the current file (must reload *sshd* to apply at this point).
3. A "reset" of the *sshd* config by overwriting the current config with the the original copy (.ORIG extension).

### roundup
Work in-progress, intended as a login splash page for displaying failed login attempts, credentials, IP addresses and timestamps (from /var/log/auth.log)

### volatility2install
Automates the installation of the Volatility memory forensics tool and its prerequisites (*python2*, *python2-pip* and *python2-dev*).
Currently, this tool is confirmed to work on Kali Linux and Linux Mint 20.x, with more to follow.
