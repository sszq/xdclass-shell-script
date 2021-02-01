#!/bin/bash
read -p 'Please input a number:' number
#echo "Please input a number:"
#read number

if [ $number -eq 5 ]
then echo "$number equals 5"
elif [ $number -gt 5 ]
then echo "$number greater than 5"
elif [ $number -lt 5 ]
then echo "$number lesser than 5"
fi
