#!/usr/bin/env bash

function readKey {
	sed -n "s/$1=\(.*\)/\1/p" `dirname $0`/sc.config
}

# set environment variables
export user=`readKey user`
export vpn=`readKey vpn`

# Debug statements
#echo $user
#echo $vpn
