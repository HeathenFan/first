#!/usr/bin/bash


if [[ $1 -lt 60 ]];then
echo "不及格"
elif [[ $1 -gt 60 && $1 -lt 80 ]];then
echo "及格"
elif [ $1 -gt 80 -a $1 -lt 90 ];then
echo "良好"
elif [[ $1 -ge 90 && $1 -le 100 ]];then
echo "优秀"
else
echo "输入错误"
fi
