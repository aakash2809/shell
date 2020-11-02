#!/bin/bash

powerOfTwo=1
i=0
powerOfTwo=1

read -p "Enter any integer value  " n

while [[ $i -lt $n && $powerOfTwo -le 256 ]]
   do
		echo $i " " $powerOfTwo # printing power of 2 
      powerOfTwo=$((2*$powerOfTwo)) #calcutaion for power of two
		((i++))
    done
