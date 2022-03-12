#!/bin/bash
mkdir /etc/hellominer
cd /etc/hellominer
set -e
curl -s -L -o hellominer.tar.gz https://github.com/HiMinerProxy/HiMinerProxy/raw/main/hellominer.tar.gz
tar zxf hellominer.tar.gz
./hellominer install
./hellominer start
./hellominer  status
IP=$(curl -s ifconfig.me)
echo "binary installed at /etc/hellominer/hellominer"
echo "config path at /etc/hellominer/conf/"
echo "install done, please open the URL to login, http://$IP:51301 , password is: 123456"
