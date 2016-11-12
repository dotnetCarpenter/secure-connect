#!/usr/bin/env bash

function readKey {
	sed -n "s/$1=\(.*\)/\1/p" `dirname $0`/sc.config
}

# set environment variables
export user=`readKey user`
export vpn=`readKey vpn`

#echo $user
#echo $vpn

# execute scripts as user in sc.config
[ `whoami` = $user ] || exec su -c $0 $user
`dirname $0`/disquiseConnect.sh
`dirname $0`/vpnConnect.sh

exit
