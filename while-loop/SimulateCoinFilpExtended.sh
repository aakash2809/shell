#!/bin/bash 

headscount=0 #no of Heads win
tailscount=0 #no of Tails win
while [[ $headscount -lt 11 && $tailscount -lt 11 ]]
do 
	#random win genration for heads or tails
	result=$((RANDOM%2));
	if [ $result -eq 0 ]
        then
				headscount=$(($headscount+1)) #increamentation head wins count
        else tailscount=$(($tailscount+1)) #increamentation tails win count
	fi
done

echo "Number of time Heads win " $headscount
echo "Number of time Tails win " $tailscount
