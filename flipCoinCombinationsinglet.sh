#!/bin/bash

#Flip Coin  Combination
#This problem displays the winner Heads or Tails
#Flip Coin Combination

#((RANDOM)) to find Heads orTails

read -p "say Heads or Tails (Simply Enter 1.For Heads 2.For Tails) : " userInputValue;
echo "Welcome to flip coin combination problem."


#Variables
Head=1;
Tail=2;
countHeads=0;
countTails=0;

#Multiple times of flipping a coin store the Singlet Combination in a Dictionary. 
#Finally determine the	percentage of the Singlet Combination.


#diactionary declaration for siglet

declare -A singletDictionary

for (( i=0; i<=11; i++ ))
do
	# Random for flip coin 
	flipCoin=$((RANDOM%2+1))

	case $flipCoin in

		$Head)
			singletDictionary[((countHeads))]=$(($countHeads + $i));;
		$Tail)
			singletDictionary[((countTails))]=$(($countTails + $i));;
		    *)
			echo  " " ;;
	esac

	((noOfTimes--))

done
echo ${singletDictionary[@]}
#read dictinaery elements.
for pos in ${singletDictionary[@]}
do
	echo "$pos is: ${singletDictionary[@]},"
done
element=11;

for pos in ${singletDictionary[@]}
do
        perc=$[(($singletDicionary[countheads] *100)) /$element]
done
