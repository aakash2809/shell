#!/bin/bash 

#taking input
read -p " Enter year " year

#contions for check year is leap year
if [ $(($year%400)) -eq 0 -o  $(($year%4)) -eq 0 -a  $(($year%100)) -ne 0 ]
   then
         echo "year is a Leap year"
   else
         echo "year is not Leap Year"
fi


