#!/bin/bash 

totalMoney=100
win=0
loss=0
numberOfBets=0

while [[ $totalMoney -gt 0 && $totalMoney -lt 200 ]]
		do
			#random result genration for win or loss
			result=$((RANDOM%2))
			if [ $result == 0 ]
				then
					totalMoney=$(($totalMoney-1))
					loss=$(($loss+1))
			else
				win=$(($win+1))
				 totalMoney=$(($totalMoney+1))
			fi

			((numberOfBets++))
		done

echo "number of won = "  $win
echo "total bets made " $numberOfBets
 
