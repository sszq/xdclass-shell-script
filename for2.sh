#!/bin/bash
for i in $(cat ip.txt)
do 
	ping -c 2 $i
	echo -e '\n'
done
