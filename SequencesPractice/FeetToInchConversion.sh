#!/bin/bash

feet=12 #  Feet inch relation
# to find 1 inch value in terms of feet
inch=`echo $feet $int | awk '{ print 1/$1 }'`
#42 inch is equal to how many feet
result=`echo $inch 42 | awk '{ print $1*$2 }'`

echo "42 in = " $result " ft"

