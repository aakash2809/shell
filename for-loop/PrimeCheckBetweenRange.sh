#!/bin/bash 

flag=0;
#TAKING INPUT FOR RANGE
read -p "input starting limit value = " begin
read -p "input ending limit value = " end
#LOGIC TO CHECHK  NUMBER  PRIME OR NOT
for ((i = $begin ; i < $end ; i++))
do
	flag=0
	for ((j = 2 ; j < $i ; j++))
   do
   	sum=`echo  $i $j | awk  '{print $1%$2}'`
      if [ $sum == 0 ]
      then
          flag=1;
       fi
   done
	#CHECKING ADN PRINTING PRIME NUMBER
	if [ $i == 1 ]
	then
		echo ""
	else
		if [ $flag == 0 ]
      then
          echo $i
		fi
	fi
done
