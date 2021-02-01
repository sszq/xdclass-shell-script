#!/bin/bash
read -p "Please the city:" city
ip=`cat ~/.cust-remote-ip | grep $city | awk -F "|" '{print $2}'`
sshpass -p "dongfang150066" ssh root@${ip}
