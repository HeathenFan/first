#!/usr/bin/bash
MYBAK=/mysqlbackup
#USER=root
#PASSWORD=1234
DB=world
MYDATE=`date +%Y%m%d%H%m%S`
BAKFILE=${MYBAK}/${DB}_${MYDATE}.sql
read -p  "请输入你的数据库用户名" $USER
read -s -p "$USER用户名的密码是" $PASSWORD
mysqldump -u$USER -p$PASSWORD --databases $DB > ${MYBAK}/${DB}_${MYDATE}.sql

if [ -f ${BAKFILE} ];then
	if [ ! -d ${MYBAK} ];then
mkdir -p ${MYBAK}
fi
echo "今天是${MYDATE},${DB}备份成功"
echo "目录是${MYBAK}，名字为${DB}_${MYDATE}.sql"
fi
