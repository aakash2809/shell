#!/bin/bash -x

MIN=1
MAX=6
randomDiceNunmber=$((RANDOM%(MAX-MIN)+$MIN));
echo "after throwing dice you got-"  $randomDiceNunmber;


