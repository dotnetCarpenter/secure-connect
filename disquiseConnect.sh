#!/usr/bin/env bash

# Developed on Ubuntu 16.04
# You need macchanger installed

# Disable network-manager because it will show wrong stuff anyway while we play with the wifi
sudo /etc/init.d/network-manager stop

# Down wifi
sudo ifconfig wls2 down

# Change mac address
sudo macchanger --random wls2

# Up wifi
sudo ifconfig wls2 up

# Start network-manager again
sudo /etc/init.d/network-manager start
