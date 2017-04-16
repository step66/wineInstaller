#!/bin/bash
# remember to set permissionsw with:  chmod 0755 wineInstaller.sh
# run with ./wineInstaller.sh

set -x #echo on

#For 64-bit system, run command to enable 32 bit architecture:
sudo dpkg --add-architecture i386

wget https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo apt-get update -y 

sudo apt-get install --install-recommends winehq-stable -y

# If apt-get complains about missing dependencies, install them, then repeat the last two steps (update and install).


