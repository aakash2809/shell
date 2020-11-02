#!/bin/bash

#TO FIND EQUAL DIGIT NUMBER UNDER 100
for (( i=0 ; $i<100; i++ ))
do
	unitDigit=$(($i%10))
	tensDigit=$(($i/10))	
	if [ $unitDigit -eq $tensDigit ]
	then
		if [ $i -eq 0 ]
			then
	   	arr[i]=00;
		
		else
			arr[i]=$i
  		fi
	fi
done

echo "Nunmbers (0-100) having the digits that are repeated twice  "
echo " "
echo "${arr[@]}"

