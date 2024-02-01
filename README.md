# spare-parts-bin
Collection of various scripts I have found useful for working in and around GNU/Linux operating systems.

#### sshd config scripts suite
Three scripts for performing the following:
1. Creating backups of the current *sshd* config (with an additional copy created to serve as the initial post-install configuration).
2. Restoring the backup config file to the current file (must reload *sshd* to apply at this point).

###### Future plans for ssh configuration script
- Automatically populate a config file
- Generate multiple keys from cli with user and hostname added
- **Move into a separate repo**


#### Repo Roundup
- Recursively checks directories to determine if they are repos, and outputs `git status` results to console


## Installers

#### volatility2install
- Automates the installation of the Volatility memory forensics tool and its prerequisites
- Currently, this tool is confirmed to work on Kali Linux and Linux Mint 20.x

#### security-onion-setup
- Automates installation of Security Onion and its prerequisite packages on Ubuntu 20.04 desktop (not servers)
