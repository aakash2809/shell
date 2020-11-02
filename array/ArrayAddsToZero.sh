#!/bin/bash 

#VARIABLE
flag=0
#ARRAY 
arr=(2 -1 -1 4 -2 -2 5)
echo "input array "
echo " "
echo "${arr[@]}"
echo " "
#FIND THE SIZE OF ARRAY
n=${#arr[@]}

echo "---------Output----------"
echo " "
#LOGIC TO MAKE TRIPLET AND CHECK THEIR SUM IS ZERO
 for ((i=0; $i<$(($n-2)); i++)) 
    do
        for ((j=$(($i+1)); $j < $(($n-1)); j++)) 
        do
            for ((k=$(($j+1)); $k < $n; k++)) 
            do
                if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ] 
                then
                    echo "${arr[i]}" " " "${arr[j]}" " " "${arr[k]}"; 

                    
                    flag=1; 
                fi
            done 
        done 
	done
if [ $flag -eq 0 ]
	then 
		echo "no required  triplet found "
fi
