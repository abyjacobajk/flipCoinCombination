#!/bin/bash

#Flip Coin  Combination
#This problem displays the winner Heads or Tails
#Flip Coin Combination

#((RANDOM)) to find Heads orTails

read -p "say Heads or Tails (Simply Enter 1.For Heads 2.For Tails) : " userInputValue;
echo "Welcome to flip coin combination problem."

randomValue=$((RANDOM%2+1));
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
			singletDictionary["Heads"]=$((++countHeads));;
		$Tail)
			singletDictionary["Tails"]=$((++countTails));;
		    *)
			echo  " " ;;
	esac

	((noOfTimes--))

done

#read dictinaery elements.
for pos in ${!singletDictionary[@]}
do
	echo "$pos is: ${singletDictionary[$pos]},"
done

#if random value and user input value match you won else you lost 

if [ $randomValue == $userInputValue ] 
then
	echo "Congratulations ! You Won the Toss";
else
	echo "Sorry,You Lost The Toss !";
fi;
