#!/bin/bash
# search database data
read -p "Please input the user name what you want to search:" name
mysql.exe -uroot -ptoor -e "select * from xdclass.user where name='${name}';"
