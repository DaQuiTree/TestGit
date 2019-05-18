#!/bin/sh
binfile=client_linux_amd64
rootpath=/home/daqui/GitProj/OverGate
binpath=${rootpath}/${binfile}

pgrep -u $(whoami) -f $binfile| xargs kill -9
$binpath -c ${rootpath}/client.json >/dev/null 2>&1 &
