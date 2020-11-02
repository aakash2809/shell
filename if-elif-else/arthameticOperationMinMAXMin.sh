#!/bin/bash 

index=0
#DECLARATION OF ARRAY
declare -a resultStore

echo "                   Arithmetic Compution"
echo "--------------------------------------------------------------------"
#TO TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput
#COMPUTE ARITHMETIC OPERATION
result1=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 + $2 * $3)}'`
resultStore[index]=$result1
((index++))
#COMPUTE ARITHMETIC OPERATION
result2=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 / $2 + $3)}'`
resultStore[index]=$result2
((index++))
#COMPUTE ARITHMETIC OPERATION
result3=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 % $2 + $3)}'`
resultStore[index]=$result3
((index++))
#COMPUTE ARITHMETIC OPERATION
result4=`echo $firstInput $secondInput $thirdInput |awk '{printf($1 * $2 + $3)}'`
resultStore[index]=$result4

echo "${resultStore[@]}"
n=${#resultStore[@]}
index2=0
min=0
max=0
while [ $index2 -lt $n ]
do
	if [[ $index2 -eq 0 ]]
		then
			min=${resultStore[index2]}
			max=${resultStore[index2]}
			((index2++))
	fi	
	if [[ `echo "${resultStore[index2]}  $min" | awk '{print ($1 < $2)}'` == 1 ]]

		then
			min=${resultStore[index2]}
			  ((index2++))
	fi
	if [[ `echo "${resultStore[index2]}  $min" | awk '{print ($1 > $2)}'` == 1 ]]
		 then
			max=${resultStore[index2]}
			((index2++))
	fi

done

echo "Minimum = " $min
echo "Maximum = " $max
