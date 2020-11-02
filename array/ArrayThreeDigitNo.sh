#!/bin/bash 

for (( count=0; count<10 ; count++))
	do
		#TO FIND RANDOM THREE DIGIT NUMBER
		randomThreeDigitNo=$((RANDOM%1000));
		if [ $randomThreeDigitNo -lt 100 ]
      then
				temp=$(( 100 -  $randomThreeDigitNo));
				randomThreeDigitNo=$(($randomThreeDigitNo + $temp ));
       fi
			#TO STORE RANDOM THREE DIGIT NUMBER
		   arr[$count]=$randomThreeDigitNo;
	done
#FOR EACH FOR  ITRARATION
for i in "${arr[@]}"
do
	echo $i

done
#FOR ASSIGNING ARRAY  VALUE S
min=${arr[0]};
max=${arr[0]};
secondMin=${arr[0]};
secondMax=${arr[0]};

echo $min;
#FOR EACH FOR  ITRARATION
for i in "${arr[@]}"
do
	if [ $i -gt $max ]
   then
       secondMax=$max;
       max=$i;
   elif [ $i -gt $secondMax ]
   then
       secondMax=$i;
   fi

   if [ $i -lt $min ]
   then
        secondMin=$min;
        min=$i;

   elif [ $i -lt $secondMin ]
   then
       secondMin=$i;
   fi

done

#PRINTING MINIMUMU AND MAXIMUM VALUE FROM ARRAY
echo  " second Minimum value " $secondMin;
echo  " second Maximum value =" $secondMax;
