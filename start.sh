#!/bin/bash
CWD=$(cd "$(dirname $0)";pwd)
setenforce 0 > /dev/null 2>&1
sed -i 's#SELINUX=enforcing#SELINUX=disabled#g' /etc/selinux/config > /dev/null 2>&1
chmod 777 $CWD/liveqing
$CWD/liveqing install
$CWD/liveqing start