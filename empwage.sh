#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=1
random=$((RANDOM%2))
if [ $isPresent -eq $random ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
