#!/bin/bash 

limit=0

#dictionary declaration for dice value
declare -A MonthOfBirth1 #Dictionary for year 93
declare -A MonthOfBirth2 #Dictionary for year 94

#initialisation of dictionary 1 which representing to the year 93
MonthOfBirth1[1]=0
MonthOfBirth1[2]=0
MonthOfBirth1[3]=0
MonthOfBirth1[4]=0
MonthOfBirth1[5]=0
MonthOfBirth1[6]=0
MonthOfBirth1[7]=0
MonthOfBirth1[8]=0
MonthOfBirth1[9]=0
MonthOfBirth1[10]=0
MonthOfBirth1[11]=0
MonthOfBirth1[12]=0

#initialisation of dictionary 1 which representing to the year 94
MonthOfBirth2[1]=0
MonthOfBirth2[2]=0
MonthOfBirth2[3]=0
MonthOfBirth2[4]=0
MonthOfBirth2[5]=0
MonthOfBirth2[6]=0
MonthOfBirth2[7]=0
MonthOfBirth2[8]=0
MonthOfBirth2[9]=0
MonthOfBirth2[10]=0
MonthOfBirth2[11]=0
MonthOfBirth2[12]=0

#loop for randon birth month and year genration and storing induals birth occurance in same month
while [ $limit -lt 50 ]
   do
      #random month genration
      month=$((RANDOM%12+1));
		#random year genration
      year=$((RANDOM%2+3+90));
		
      if [ $year -eq 93 ]
		then
				 curr=$((${MonthOfBirth1[$month]} + 1))

				 #assigning genrated value's current occrance in dictionary
				 MonthOfBirth1[$month]=$curr
      else
				 curr=$((${MonthOfBirth2[$month]} + 1))

             #assigning genrated value's current occrance in dictionary
             MonthOfBirth2[$month]=$curr

			fi
         ((limit++))


   done

echo " "
echo "Number of individuals having birth in same month in the year 93 are ="

#printing the  month and no of of idivisuals samee birth month occurance in year 93
for (( i=1 ; i<=12 ; i++))
	do


		case $i in

			1)
				echo "january    - " "${MonthOfBirth1[$i]}";;

			2 )
				echo "February   - " "${MonthOfBirth1[$i]}";;

			3 )
				echo "March      - " "${MonthOfBirth1[$i]}";;

			4 )
				echo "April      - " "${MonthOfBirth1[$i]}";;

         5)
				echo "May        - " "${MonthOfBirth1[$i]}";;

			6)
				echo "june       - " "${MonthOfBirth1[$i]}";;

			7)
				echo "july       - " "${MonthOfBirth1[$i]}";;

         8)
				echo "Auguest    - " "${MonthOfBirth1[$i]}";;

			9)
				echo "September  - " "${MonthOfBirth1[$i]}";;

         10)
				echo "Octuber    - " "${MonthOfBirth1[$i]}";;

			11)
				echo "November   - " "${MonthOfBirth1[$i]}";;

			12)
				echo "December   - " "${MonthOfBirth1[$i]}";;
			*)
				 echo "default";;
		esac
	done

echo "----------------------------------------------------------------------"
echo " "
echo "Number of individuals having birth in same month in the year 94 are ="

#printing the  month and no of of idivisuals samee birth month occurance in year 93
for ((i=1 ; i<=12 ;i++))
   do
      case $i in
         1)
            echo "january     - " "${MonthOfBirth2[$i]}";;

         2)
            echo "February    - " "${MonthOfBirth2[$i]}";;

         3)
            echo "March       - " "${MonthOfBirth2[$i]}";;

         4)
            echo "April       - " "${MonthOfBirth2[$i]}";;

         5)
            echo "May         - " "${MonthOfBirth2[$i]}";;

         6)
            echo "june        - " "${MonthOfBirth2[$i]}";;

         7)
            echo "july        - " "${MonthOfBirth2[$i]}";;

         8)
            echo "Auguest     - " "${MonthOfBirth2[$i]}";;

         9)
            echo "September   - " "${MonthOfBirth2[$i]}";;

         10)
            echo "Octuber     - " "${MonthOfBirth2[$i]}";;

         11)
            echo "November    - " "${MonthOfBirth2[$i]}";;

         12)
            echo "December    - "  "${MonthOfBirth2[$i]}";;
         *)
             echo "default";;
		esac
   done
