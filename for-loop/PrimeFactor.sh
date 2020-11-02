#!/bin/bash
#TAKING INPUT
read -p "enter any number -" n;

echo "Number's prime factor"
#FINDING PRIME FACTOR OF NUMBER
for (( i=2 ; $n>1; i++ ))
do
	while [ $(($n%$i)) -eq 0 ]
	do
		echo $i
      n=$(($n/$i))
	done
done


