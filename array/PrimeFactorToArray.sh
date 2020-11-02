#!/bin/bash
#TO FIND PRIME FATOCTOR OF NUMBER AND STORED  IN ARRAY
j=0;
read -p "enter any number -" n;
for (( i=2 ; $n>1; i++ ))
do
   while [ $(($n%$i)) -eq 0 ]
      do
			arr[j]=$i
         n=$(($n/$i))
			((j++))
      done
done

echo "${arr[@]}"
