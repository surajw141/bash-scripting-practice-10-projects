#!/bin/bash

# System Maintenance Script
# This script updates, upgrades, and removes unnecessary packages from the system.

apt-get update -y   # This command wilt u date your system to latest version of utilities.
apt-get upgrade -y # This command will u grade your system to latest version of utilities.
apt-get remove -y    # This command will remove unnecessary utilities from your system.