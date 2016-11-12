#!/usr/bin/env bash

# read sc.config
`dirname $0`/readConfig.sh

# execute scripts as user in sc.config
[ `whoami` = $user ] || exec su -c $0 $user
`dirname $0`/disquiseConnect.sh
`dirname $0`/vpnConnect.sh

exit 0
