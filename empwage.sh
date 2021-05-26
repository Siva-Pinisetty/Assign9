#!/bin/bash
function wrkhrs()
{
case $1 in
	2) echo "8";;
	1) echo "4";;
	0) echo "0";;
esac
}
declare -a day
echo "Welcome to Employee Wage Computation"
empPerHr=20
totalwage=0
read -p "Enter the day for total wage: " nmb
for ((i=1; i<=$nmb; i++))
do
	ran=$((RANDOM%3))
	day[$i]=$(($empPerHr*`wrkhrs $ran`))
	totalwage=$(($totalwage+${day[$i]}))
done
for i in ${!day[@]}
do
echo "Day $i = ${day[$i]}"
done

echo "Totalwage is $totalwage for $nmb days"
