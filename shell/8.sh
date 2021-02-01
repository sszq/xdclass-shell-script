#!/bin/bash
for i in $(seq 1 10)
do 
	username="user$i"
	userdel $username 1>/dev/null && echo "$username已经删除"
done
