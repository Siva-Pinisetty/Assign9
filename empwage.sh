#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
wrkhrs=0
empPerHr=20
empFulHr=8
empPrtHr=4
month=20
empwage=0
for ((i=1; i<=$month; i++))
do
	if [ $wrkhrs -lt 100 ]
	then
		random=$((RANDOM%3))
		case $random in
		2)	echo "Employee is Present"
		Salary=$(($empPerHr*$empFulHr))
		empwage=$(($empwage+$Salary))
		wrkhrs=$(($wrkhrs+$empFulHr))
			;;
		1)	echo "Employee is Part time Present"
		Salary=$(($empPerHr*$empPrtHr))
		empwage=$(($empwage+$Salary))
		wrkhrs=$(($wrkhrs+$empPrtHr))
			;;
		*)	echo "Employee is Absent"
		Salary=0
			;;
		esac
	else
		break
	fi
done
echo "Salary of $empwage credited in $(($i-1)) th day for $wrkhrs hours"
