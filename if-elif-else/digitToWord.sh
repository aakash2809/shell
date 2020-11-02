#!/bin/bash 

#taking input
read  -p "enter any single digit no." input
if [ $input -eq 0 ]
then 
		echo "Zero";
elif [ $input -eq 1 ]
then
      echo "One";
elif [ $input -eq 2 ]
then
      echo "Two";
elif [ $input -eq 3 ]
then
      echo "Three";
elif [ $input -eq 4 ]
then
      echo "Four";
elif [ $input -eq 5 ]
then
      echo "Five";
elif [ $input -eq 6 ]
then
      echo "Six";
elif [ $input -eq 7 ]
then
      echo "Seven";
elif [ $input -eq 8 ]
then
      echo "Eight";
elif [ $inout -eq 9 ]
then
	echo "Nine"
else 
		echo "only right single digit number"
fi
