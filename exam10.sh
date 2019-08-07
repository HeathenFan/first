#!/usr/bin/env bash



if [ $# -ge 1 ];then
systemctl status $1 &> /dev/null
	if [ $? -eq 0 ];then
	echo "$1 is already running"
	else
	systemctl start $1 &> /dev/null
		if [ $? -eq 0 ];then
		echo "启动成功"
		else
		echo "没有找到该服务"
 		fi

	fi
fi
