#!/bin/bash
read -p "Enter single digit no." singleDigit
case $singleDigit in
   1)
      echo "Monday";;
   2)
      echo "Tuesday";;
   3)
      echo "Wednesday";;
   4)
      echo "Thursday";;
   5)
      echo "Firday";;
   6)
      echo "Saturday";;
   7)
      echo "Sunday";;
   *)
      echo "please enter only 1 to 7 digit";;
esac
