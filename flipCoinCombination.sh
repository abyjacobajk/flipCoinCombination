#!/bin/bash

#As a Simulator start
#with Flipping a Coin
#to Display Heads or Tails

echo "Lets flip the coin and check wheather result is head or tail"
tossresult=$(($RANDOM%2+1));
if [ $tossresult -eq 1 ]
then
echo "output is heads "
else
echo "output is tails"
fi
