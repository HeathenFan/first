#!/usr/bin/bash
#
#
#
case $1 in 
start|"启动")
	systemctl start firewalld | tee ;
;;
stop |"停止")
	systemctl stop firewalld;
;;
restart|"重启")
	systemctl restart firewalld;
;;
*)
	echo "启动防火墙的脚本";
;;
esac
