#!/usr/bin/env bash

function readKey {
	sed -n "s/$1=\(.*\)/\1/p" `dirname $0`/sc.config
}

# set environment variables
export "scUser=`readKey user`"
export "scVpn=`readKey vpn`"

# Debug statements
#export -p
#echo $scUser
#echo $scVpn
