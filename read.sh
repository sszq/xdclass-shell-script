#!/bin/bash
#read -s -p "Please input password:" pass
#read -t 5 -p "Please input password:" pass
read -n 5 -p "`echo -e "\033[31;43;4;5m Please input password: \033[0m"`" pass
echo -e "\n"
echo "You password is:$pass"
