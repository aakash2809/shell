#!/bin/bash -x

MIN=1
MAX=6
count=0
sum=0
while [ $count -lt 2 ]
	do

	sum=$(($sum + $((RANDOM%(MAX-MIN)+$MIN))));


	((count++))


	done


echo $sum;
