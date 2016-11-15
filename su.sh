#!/usr/bin/env bash

# read sc.config
`dirname $0`/readConfig.sh

# debug
#printenv

# execute scripts as user in sc.config
[ `whoami`=$scUser ] || exec su -c $0 $scUser
`dirname $0`/disquiseConnect.sh
`dirname $0`/vpnConnect.sh

exit 0
