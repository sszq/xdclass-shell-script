#!/bin/bash
read -p "Please input to be added user name:" name
read -p "Please input to be added user count:" count
#for $((i=1; i<=$count; i++))
for i in $(seq 1 $count)
do 
	username=$name$i
	echo $username
# search user if exise
	grep "$username" /etc/passwd 1>/dev/null
	exist=`echo $?`
	echo $exist
	if [ $exist -eq 1 ]
	then 
# add user
		useradd $username 1>/dev/null && echo "$username添加成功"
# set password
		password=`head -1 /dev/urandom | md5sum | cut -c 1-8`
# save username and password
# centos
#		echo $password | passwd --stdin $username 1>/dev/null && echo -e "username:$username\tpassword:$password" >> username-password.txt
# debian
		echo "$username:$password" | chpasswd 1>/dev/null && echo -e "username:$username\tpassword:$password" >> username-password.txt
	else
		echo "$username已在存在"
	fi
done
