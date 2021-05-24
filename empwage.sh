#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=1
empPerHr=20
empFulHr=8
random=$((RANDOM%2))
if [ $isPresent -eq $random ]
then
	echo "Employee is Present"
	Salary=$(($empPerHr*$empFulHr))
	echo "and his salary is $Salary"
else
	echo "Employee is Absent"
	Salary=0
	echo " and his salary is $Salary"
fi
