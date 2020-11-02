#!/bin/bash 

#FUNCTION TO CONVERT CELCELCIOUS TO FARENHEIT
celciousToFahrenheit()

{
        degC=$1
	     degF=0
        degF=`echo $degC | awk '{print $1 * 9/5 + 32}'`
        echo $degF
}

#FUNCTION TO CONVERT CELCELCIOUS TO FARENHEIT
FahrenheitToCelcious()
{
   degC=0
   degF=$1
   temp=`echo $degF | awk '{print $1-32}'`
   degC=`echo $temp | awk '{print $1 * 5/9}'`

   echo $degC
}

#MESSAGE TO TAKE INPUT
echo "Enter 1 for Degree celcious to Fahrenheit"
echo "Enter 2 for Degree Fahrenheit to Celicious"


#TO TAKE INPUT
read  n
read -p " enter value to be converted " input

#VALIDATION AND FUCTION CALLING
if [ $n -eq 1 ]
then
if [[ `echo $input |awk '{ print $1 -ge 0}'` && `echo $input |awk '{ print $1 -ge 0}'` ]]
	then
		degF=$(celciousToFahrenheit $input)
		#PRINT RESULT
		echo $degF
else

	#PRINT RESULT
	echo "invalid"
fi

else
if [[ `echo $input |awk '{ print $1 -ge 32}'` && `echo $input |awk '{ print $1 -le 212}'` ]]
   then
		degC=$(FahrenheitToCelcious $input)

		#PRINT RESULT
		echo $degC
else
	#PRINT RESULT
   echo "invalid"
fi

fi


