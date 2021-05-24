#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

empPerHr=20
empFulHr=8
empPrtHr=4
month=20
empwage=0
for ((i=1; i<=$month; i++))
do
	random=$((RANDOM%3))
	case $random in
		2)	echo "Employee is Present"
		Salary=$(($empPerHr*$empFulHr))
		empwage=$(($empwage+$Salary))
			;;
		1)	echo "Employee is Part time Present"
		Salary=$(($empPerHr*$empPrtHr))
		empwage=$(($empwage+$Salary))
			;;
		*)	echo "Employee is Absent"
		Salary=0
		empwage=$(($empwage+$Salary))
			;;
	esac
done
echo "Salary for a month $empwage"
