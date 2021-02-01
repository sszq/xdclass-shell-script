#!/bin/bash
read -p 'Please the city what you want to search weather:' city
case $city in
	'beijing')
		echo '北京天气-3度'
		;;
	'shanghai')
		echo '上海天气8度'
		;;
	'wuhan')
		echo '武汉天气4度'
		;;
	*)
		echo '您输入的城市不存在'
		;;
esac
