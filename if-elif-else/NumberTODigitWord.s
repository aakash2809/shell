#!/bin/bash

index=0;

read -p "Enter any number." number
#DECLARATION OF ARRAY FOR DIGITS IN WORKD
declare -a storeDigit
#LOOP TO CONVER NUMBER INTO WORD DIGIT
while [ $number -gt 0 ]
do
   singleDigit=$(($number%10))
   number=$(($number/10))
  	if [ $singleDigit -eq 0 ]
	then
		storeDigit[index]="Zero"
    elif [ $singleDigit -eq 1 ]
    then
       storeDigit[index]="One"
    elif [ $singleDigit -eq 2 ]
    then 
      storeDigit[index]="Two"
    elif [ $singleDigit -eq 3 ]
    then
		storeDigit[index]="Three"
    elif [ $singleDigit -eq 4 ]
    then
		storeDigit[index]="Four"
    elif [ $singleDigit -eq 5 ]
    then
		storeDigit[index]="Five"
    elif [ $singleDigit -eq 6 ]
    then
		storeDigit[index]="Six"
    elif [ $singleDigit -eq 7 ]
    then
		storeDigit[index]="Seven"
    elif [ $singleDigit -eq 8 ]
    then
		storeDigit[index]="Eight"
    elif [ $singleDigit -eq 9 ]
    then
		storeDigit[index]="Nine"
    else
      echo "please enter only single digit"
	fi
  ((index++))
done

min=0
max=$(( ${#storeDigit[@]} -1 ))
#REVERSE TO STORED WORDS
while [[ min -lt max ]]
do
    # SWAP CURRENT WITH LAST ELEMENT
    x="${storeDigit[$min]}"
    storeDigit[$min]="${storeDigit[$max]}"
    storeDigit[$max]="$x"
    (( min++, max-- ))
done
#PRINT FINAL RESULT
echo ${storeDigit[@]}

