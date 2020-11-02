#!/bin/bash 

flag=0;

read -p "Enter any integer value = " n

for ((i = 2 ; i < $n ; i++))
do
	sum=`echo  $n $i | awk  '{print $1%$2}'`
	if [ $sum == 0 ]
	then
		flag=1;
	fi 
done
#CHECKING FOR PRIME NUMBER
if [ $n == 1 ]
then
	echo  "no is not prime"
else
	if [ $flag == 0 ]
	then
		echo "Number is prime"
		else
			echo "Number is not prime"
	fi
fi
