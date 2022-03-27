#!/bin/bash
BIN_NAME="hellominer"
PATH_TO_BIN="/etc/hellominer/"${BIN_NAME}
SERVICE_NAME="hellominer"
case $1 in
install)
	if [ -f ${PATH_TO_BIN} ]; then
		/etc/hellominer/${BIN_NAME} uninstall
	fi
	#remove exists files
	rm -rf /etc/hellominer
	rm -rf /etc/systemd/system/${SERVICE_NAME}*
	systemctl daemon-reload
	systemctl reset-failed
	mkdir /etc/hellominer
	cd /etc/hellominer
	set -e
	curl -s -L -o ${BIN_NAME}.tar.gz https://github.com/HiMinerProxy/HiMinerProxy/raw/main/hellominer.tar.gz
	tar -xzvf ${BIN_NAME}.tar.gz
	./${BIN_NAME} install
	./${BIN_NAME} start
	./${BIN_NAME} status
	IP=$(curl -s ifconfig.me)
	echo "binary installed at /etc/hellominer/hellominer"
	echo "config path at /etc/hellominer/conf/"
	echo "install done, please open the URL to login, http://$IP:51301 , password is: 123456"
	;;
update)
	if [ -f ${PATH_TO_BIN} ]; then
		rm -f /etc/hellominer/${BIN_NAME}
		rm -f /etc/hellominer/${BIN_NAME}.tar.gz
		cd /etc/hellominer
		curl -s -L -o ${BIN_NAME}.tar.gz https://github.com/HiMinerProxy/HiMinerProxy/raw/main/hellominer.tar.gz
		tar -xzvf ${BIN_NAME}.tar.gz
		systemctl restart ${BIN_NAME}
		./${BIN_NAME} status
		echo "binary installed at /etc/hellominer/hellominer"
		echo "config path at /etc/hellominer/conf/"
		echo "hellominer updated!"
	else
		echo "ERROR:please install hellominer first"
	fi
	;;
esac
