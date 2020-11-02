#!/bin/bash

for (( count=0; count<10 ; count++))
   do
		#FINDING   RAMDOM THREE - VAULUE
      randomThreeDigitNo=$((RANDOM%1000));
      if [ $randomThreeDigitNo -lt 100 ]
      then
            temp=$(( 100 -  $randomThreeDigitNo));
            randomThreeDigitNo=$(($randomThreeDigitNo + $temp ));
       fi
	    #	RANDONN THREE DIGIT NUMBER  GET STORED IN  ARRAY
         arr[$count]=$randomThreeDigitNo;
   done

echo "${arr[@]}"
echo " "

#SORTING  ARRAY
for ((i=0 ; $i < 10 ;i++))
do
  	for ((j=$(($i + 1)) ; $j < 10 ;j++))
		do
			if [ ${arr[i]} -gt ${arr[j]} ]
			then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$temp
			fi
		done
done


echo  "-----------sorted-----------"
echo " "
echo "${arr[@]}"

