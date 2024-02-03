#!/bin/bash



# golang
yum install git which gcc make bison -y
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
export TERM=xterm-256color
source /root/.gvm/scripts/gvm
gvm listall
gvm install go1.17.13 -B
gvm use go1.17.13 --default

# yq
GOPROXY=https://goproxy.cn,direct GO111MODULE=on go install github.com/mikefarah/yq/v2@latest

# python
yum -y install epel-release 
yum -y install python-pip
pip install scspell3k
