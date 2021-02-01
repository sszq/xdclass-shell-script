#!/bin/bash
# check memory used
mem_total=`free -m | sed -n '2p' | awk '{print $2}'`
mem_used=`free -m | sed -n '2p' | awk '{print $3}'`
mem_free=`free -m | sed -n '2p' | awk '{print $4}'`
percent_mem_used=`echo "scale=2;$mem_used / $mem_total * 100" | bc`
percent_mem_used=`echo "scale=2;$mem_free / $mem_total * 100" | bc`

now_time=`date +"%Y-%m-%d %H:%M:%S 星期%w"`
echo "当前时间为：$now_time"

if [ $mem_used -gt 1 ]
then
	echo "\033[34;1;5m当前负载率为$percent_mem_used%，已超出负载 \033[0m"
else
	echo "当前负载率为$percent_mem_used%，正常"
fi

