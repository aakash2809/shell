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
  case $singleDigit in
  	 0)
      storeDigit[index]="Zero";;
    1)
       storeDigit[index]="One";;
  	 2)
      storeDigit[index]="Two";;
  	 3)
       storeDigit[index]="Three";;
    4)
      storeDigit[index]="Four";;
    5)
      storeDigit[index]="Five";;
    6)
      storeDigit[index]="Six";;
    7)
      storeDigit[index]="Seven";;
    8)
      storeDigit[index]="Eight";;
    9)
      storeDigit[index]="Nine";;
    *)
      echo "please enter only single digit";;
	 esac
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

