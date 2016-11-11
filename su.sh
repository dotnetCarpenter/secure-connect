#!/bin/sh
[ `whoami` = dotnet ] || exec su -c $0 dotnet
./secureConnect.sh
