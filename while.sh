#!/bin/bash
i=0
sum=0
while [ $i -lt $1 ]
do 
	sum=$(($sum + $i))
	i=$(($i + 1 ))
done
echo "0到$1的和为:$sum"
