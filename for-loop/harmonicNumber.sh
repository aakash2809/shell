#!/bin/bash  

sum=0;
read -p "Enter any integer value =" n
for ((i = 1 ; i <= $n ; i++))
do
   sum=`echo  $sum $i | awk  '{print $1+1/$2}'` #CALUCLATING THE SUM 
done

echo "nth term of harmonic series is = " $sum
