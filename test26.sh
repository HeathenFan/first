#!/usr/bin/bash
V1=1
while true
do 
	echo "$V1"
	V1=$((V1+1))
	if [ $V1 -eq 6 ];then
	exit
	fi
done
