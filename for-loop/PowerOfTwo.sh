
#!/bin/bash 

powerOfTwo=1
read -p "Enter any integer value  " n
for ((i = 0 ; i <= $n ; i++))
do
	echo $i " " $powerOfTwo
	powerOfTwo=$((2*$powerOfTwo))
done
