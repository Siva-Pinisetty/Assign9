#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

empPerHr=20
empFulHr=8
empPrtHr=4
random=$((RANDOM%3))

case $random in

	2)	echo "Employee is Present"
	Salary=$(($empPerHr*$empFulHr))
	echo "and his salary is $Salary"
		;;

	1)	echo "Employee is Part time Present"
	Salary=$(($empPerHr*$empPrtHr))
	echo "and his salary is $Salary"
		;;
	*)	echo "Employee is Absent"
	Salary=0
	echo " and his salary is $Salary"
		;;
esac
