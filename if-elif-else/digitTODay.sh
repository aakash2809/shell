#!/bin/bash

#taking input
read  -p "enter any single digit no." input
if [ $input -eq 1 ]
then
      echo "Monday";
elif [ $input -eq 2 ]
then
      echo "Tuesday";
elif [ $input -eq 3 ]
then
      echo "Wednesday";
elif [ $input -eq 4 ]
then
      echo "Thursday";
elif [ $input -eq 5 ]
then
      echo "Friday";
elif [ $input -eq 6 ]
then
      echo "Saturday";
elif [ $input -eq 7 ]
then
      echo "Sunday";
else
      echo "only right single digit number"
fi
