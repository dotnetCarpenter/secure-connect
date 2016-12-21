#!/usr/bin/env bash

# Developed on Ubuntu 16.04
# You need macchanger installed to change mac address
# Works with gnome-network-manager which is standard on Ubuntu Unity
# Depends on linux ifconfig to turn off/on wifi

# Disable network-manager because it will show wrong stuff anyway while we play with the wifi
sudo /etc/init.d/network-manager stop

# Down wifi
sudo ifconfig wls2 down

# Change mac address
sudo macchanger --random --bia wls2

# Up wifi
sudo ifconfig wls2 up

# Start network-manager again
sudo /etc/init.d/network-manager start
