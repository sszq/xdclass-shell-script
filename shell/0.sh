#!/bin/bash
while [ 1 ]
do
cat <<EOF
**************************************************************
* 1. 算出你输入的目录下一共有多少文件 eg:/data               *
* 2. 计算从0加到你输入的数字为止 eg: 0+1+2+...+ 你输入的数字 *
* 3. 批量创建用户                                            *
* 4. 测试用户名与密码是否匹配                                *
* 5. 测试ip通不通                                            *
* 6. 巡检内存使用率                                          *
* 7. 数据库里查询学生成绩                                    *
* 8. 批量删除用户                                            *
* 9. 远程登录用户                                            *
* q. 退出                                                    *
**************************************************************
EOF

read -p "请输入你的操作:" key
case $key in
	'1')
		clear
		sh 1.sh
		;;
	'2')
		clear
		sh 2.sh
		;;
	'3')
		clear
		sh 3.sh
		;;
	'4')
		clear
		sh 4.sh
		;;
	'5')
		clear
		sh 5.sh
		;;
	'6')
		clear
		sh 6.sh
		;;
	'7')
		clear
		sh 7.sh
		;;
	'8')
		clear
		sh 8.sh
		;;
	'9')
		clear
		sh 9.sh
		;;
	'q')
		echo "=============== 程序退出 =================="
		break;
		;;
	*)
		echo "输入错误，请重新输入！！！"
		;;
esac


done
