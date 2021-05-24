#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

FullPrst=2
PrtTmPrst=1
empPerHr=20
empFulHr=8
empPrtHr=4
random=$((RANDOM%3))
if [ $FullPrst -eq $random ]
then
	echo "Employee is Present"
	Salary=$(($empPerHr*$empFulHr))
	echo "and his salary is $Salary"
elif [ $PrtTmPrst -eq $random ]
then
	echo "Employee is Part time Present"
	Salary=$(($empPerHr*$empPrtHr))
	echo "and his salary is $Salary"
else
	echo "Employee is Absent"
	Salary=0
	echo " and his salary is $Salary"
fi
