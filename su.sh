#!/usr/bin/env bash

[ `whoami` = dotnet ] || exec su -c $0 dotnet
./disquiseConnect.sh
./vpnConnect.sh