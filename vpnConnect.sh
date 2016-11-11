#!/usr/bin/env bash

# Developed on Ubuntu 16.04
# You need to have confifgured your VPN in network-manager

# Wait for network-manager start in disquiseConnect.sh to really start
sleep 8

# Connect to VPN IPredator
nmcli connection up IPredator
