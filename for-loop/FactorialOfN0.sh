#!/bin/bash 

factorial=1
read -p "enter any no -" n
#LOGIC FOR FACTORIAL
for (( i=$n ; i>1; i-- ))
do
	 factorial=`echo $factorial $i | awk '{print $1*$2}'`; 
done

echo " Factorial -" $n"! = " $factorial

