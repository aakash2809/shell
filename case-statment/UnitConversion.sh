#!/bin/bash

# CONVERSION OF FEET INTO INCHES
feetToInch()
{
   meter=39.3701  # 1METER VALUE IN INCH
	# CONVERSION OF INPUT INTO INCHES
   inchValue=`echo $meter $1 | awk '{ print $1*$2 }'`

   echo $inchValue
}

# CONVERSION OF INCHES INTO FEET
inchToFeet()
{
   inch=0.0833333  # 1INCH VALUE IN FOOT
   Value=`echo $inch $1 | awk '{ print $1*$2 }'`
	echo $Value
}


# CONVERSION OF FEET INTO METER
feetToMeter()
{
   feet=0.3048 # 1FEET VALUE IN METER
   Value=`echo $feet $1 | awk '{ print $1*$2 }'`
   echo $Value
}

# CONVERSION OF METER INTO FEET
meterToFeet()
{
   meter=3.28084 # 1METER VALUE IN FEET
   Value=`echo $meter $1 | awk '{ print $1*$2 }'`
   echo $Value
}


echo "choose option "
#OPTIONS OF CONVERSION
echo "1) For feet to inch"
echo "2) For inch to feet"
echo "3)For feet to meter"
echo "4) For meter to inch"
read  input
read -p "Enter value for conversion" value
case $input in
	1)
		feetToInch $value;;
	2)
		inchToFeet $value;;
	3)
		feetToMeter $value;;
	4)
		meterToFeet $value;;
	*)
		echo "invalid choice";;
esac
