#!/usr/bin/env bash

# Developed on Ubuntu 16.04
# You need to have confifgured your VPN in network-manager

# Wait for network-manager start in disquiseConnect.sh to really start
connectivity=$(nmcli networking connectivity check)
[ "$connectivity" = "full" ] || sleep 8

# check that $vpn is assigned
[ -z "$scVpn" ] && source `dirname $0`/readConfig.sh
#echo $scVpn

# Connect to VPN defined as vpn in sc.config
nmcli connection up $scVpn
