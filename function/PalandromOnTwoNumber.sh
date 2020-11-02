#!/bin/bash

#function to get reverse
getReverse()
{       
	n=$1
   rev=0;
   while [[ $n -gt 0 ]]
   do
      remainder=$(( $n % 10 )) #--get Remainder
      n=$(( $n / 10 ))  # --------get next digit
      rev=`echo  $rev $remainder | awk '{print $1*10 + $2}'`
	done
	echo $rev
}

#funtion to check no is palindrom or not
checkPalindrom()
{
  rev=$(getReverse $1)
  if [ $2 -eq $rev ]
  then
      echo "numbers are palindrom"
  else
      echo " numbers are not palindrom"
   fi
}

read -p "Enter any integer value = " firstNumber
read -p "Enter second no value = " secondNumber
result=$(checkPalindrom $firstNumber $secondNumber)
echo  $result
