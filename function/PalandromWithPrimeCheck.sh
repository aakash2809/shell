#!/bin/bash 

flag=0;

#function to check no is prime of not
isPrime()
{ 
	n=$1
	for ((i = 2 ; i < $n ; i++))
   do
       sum=`echo  $n $i | awk  '{print $1%$2}'`
       if [ $sum == 0 ]
       then
           flag=1;

        fi
	done

if [ $n == 1 ]
then
     echo  "no is not prime"
else
		if [ $flag == 0 ]
      then
           echo "Number is prime"
      else
          echo "Number is not prime"
       fi
fi	

}

#function to get reverse 
getReverse()
{	n=$1
	rev=0;
	 while [[ $n -gt 0 ]]
	 do
    		remainder=$(( $n % 10 )) #--get Remainder 
    		n=$(( $n / 10 ))  # --------get next digit
    		rev=`echo  $rev $remainder | awk '{print $1*10 + $2}'`
done
echo $rev
}

#funtion to check no is palindrom or not
checkPalindrom()
{
	rev=$(getReverse $1)
	if [ $1 -eq $2 ]
	then
		echo "no. is palindrom" 
	else
		echo " no. is not palindrom" 
	fi
}


read -p "Enter any integer value = " n

result=$(isPrime $n ) #---------------------------call to isPrime()
rev=$(getReverse $n)  #----------------------------call to getReverse() for number
palindromCheckResult=$(checkPalindrom $n $rev) #----call to checkPailndrom()
check=$(isPrime $rev ) #----------------------------call to isprime() for reverse of number

echo $result
echo "reverse of no." $rev
echo $palindromCheckResult 
echo "the reverse of" $check



