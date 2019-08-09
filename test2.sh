#!/bin/bash
for i in {1..254}
do 
	ping -c 2 -i 0.3 -W 1  172.17.14.$i>>/dev/null
	if [ $? -eq 0 ];then
	echo "172.17.14.${i} is up" 
	fi
done

