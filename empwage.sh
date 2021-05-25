#!/bin/bash
function wrkhrs()
{
case $1 in
	2) echo "8";;
	1) echo "4";;
	0) echo "0";;
esac
}

echo "Welcome to Employee Wage Computation"
wrkhrs=0
empPerHr=20
empwage=0
for ((i=1; i<=20; i++))
do
	if [ $wrkhrs -lt 100 ]
	then
		ran=$((RANDOM%3))
		case $ran in
		2)
		#echo "Employee is Present"
		Salary=$(($empPerHr*`wrkhrs $ran`))
		empwage=$(($empwage+$Salary))
		wrkhrs=$(($wrkhrs+`wrkhrs $ran`))
			;;
		1)	empPrtHr=4
		#echo "Employee is Part time Present"
		Salary=$(($empPerHr*`wrkhrs $ran`))
		empwage=$(($empwage+$Salary))
		wrkhrs=$(($wrkhrs+`wrkhrs $ran`))
			;;
		*)	Salary=0
		#echo "Employee is Absent"
			;;
		esac
	else
		break
	fi
done
echo "Salary of $empwage credited in $(($i-1)) th day for $wrkhrs hours"
