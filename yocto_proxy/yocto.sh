#!/bin/bash

#step 1: install
sudo apt install -y connect-proxy tsocks # then modified /etc/tsocks.conf

#step 2: git core proxy
git config --global core.gitproxy /home/daquitree/bin/socks5proxy

#step 3: modified sources/meta/conf/bitbake.conf
export FETCHCMD_wget="/usr/bin/env /usr/bin/tsocks wget -t 2 -T 30 --passive-ftp --no-check-certificate"
export BB_ENV_EXTRAWHITE="FETCHCMD_wget"

#final: fetch all
#bitbake *-image --runall=fetch
