#!/usr/bin/env bash

[ `whoami` = dotnet ] || exec su -c $0 dotnet
`dirname $0`/disquiseConnect.sh
`dirname $0`/vpnConnect.sh