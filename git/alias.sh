#!/bin/sh
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.mnf "merge --no-ff"
git config --global alias.co "checkout"
git config --global alias.cm "commit"
git config --global alias.st "status"

# 以下使用http代理
#git config --global http.proxy http://127.0.0.1:1080
#git config --global https.proxy https://127.0.0.1:1080

# 以下使用socks5代理
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080

#加入/etc/rc.local
#su - daqui -c "/home/daqui/bin/overgate"

#全局.gitignore
git config --global core.excludesfile ~/.gitignore_global

#teminal global proxy
export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080

#git daemon
# git config --global alias.serve '!git daemon --base-path=. --export-all --reuseaddr --informative-errors --verbose'
# git config --global alias.hub '!git daemon --base-path=. --export-all --enable=receive-pack --reuseaddr --informative-errors --verbose'

