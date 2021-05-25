#!/bin/bash
function wrkhrs()
{
case $1 in
	2) echo "8";;
	1) echo "4";;
	0) echo "0";;
esac
}
declare -a Day
echo "Welcome to Employee Wage Computation"
empPerHr=20
Totalwage=0
for ((i=1; i<=20; i++))
do
	ran=$((RANDOM%3))
	Day[$i]=$(($empPerHr*`wrkhrs $ran`))
	Totalwage=$(($Totalwage+${Day[$i]}))
done

echo "${Day[@]} are the daily wages"
echo "Totalwage is $Totalwage"
