#!/bin/bash


yum install git which gcc make bison  -y
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /root/.gvm/scripts/gvm
gvm listall
gvm install go1.17.13 -B
gvm use go1.17.13 --default

