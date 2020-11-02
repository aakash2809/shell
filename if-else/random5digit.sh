#!/bin/bash

min=0
max=0

for (( count=0; count<5 ; count++))
do
   randomThreeDigitNo=$(($(date +"%s%N")%1000));

   if [ $randomThreeDigitNo -lt 100 ]
   then
        temp=$(( 100 -  $randomThreeDigitNo));

        randomThreeDigitNo=$(($randomThreeDigitNo + $temp ));
   fi

echo "Rendom no.is " $randomThreeDigitNo;

  if [ $count -eq 0 ]
  then
      min=$randomThreeDigitNo;
      max=$randomThreeDigitNo;
   fi

   if [ $randomThreeDigitNo -lt $min ]
   then
       min=$randomThreeDigitNo ;
    fi
    if [ $randomThreeDigitNo  -gt $max ]
    then
         max=$randomThreeDigitNo ;
    fi

done
echo  " Minimum value " $min;
echo  " Maximum value =" $max;


