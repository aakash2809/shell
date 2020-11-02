#!/bin/bash 

meter=3.281  # representing 1meter value in feets
# to find 1 feet value in terms of meters
feet=`echo $meter | awk '{ print 1/$1 }'`
#60 feet into meters
length=`echo $feet 60 | awk '{ print $1*$2 }'`
#40  feet into meters
breadth=`echo $feet 40 | awk '{ print $1*$2 }'`
# area
area=`echo $length $breadth | awk '{ print $1*$2 }'`
echo "60 feet x 40 feet  = " $area " m2 "
