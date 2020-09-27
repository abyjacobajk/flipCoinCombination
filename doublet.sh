#!/bin/bash
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


#Loop to create a Doublet Combination. and
#Store the doublet combination as well as the percentage.

declare -A doubletDictionary

for ((j=1;j<=5;j++))
do
        flip=$((RANDOM%4))
        case $flip in
                0) x=${doubletDictionary["HH"]}
		   doubletDictionary["HH"]=$((++x))
                	;;
                1)  x=${doubletDictionary["HT"]}
                   doubletDictionary["HT"]=$((++x))
                        ;;
		2) x=${doubletDictionary["TH"]}
                   doubletDictionry["TH"]=$((++x))
                        ;;
                3) x=${doubletDictionary["TT"]}
                   doubletDictionary["TT"]=$((++x))
                        ;;
        esac
done
for index in ${!doubletDictionary[@]}
do
        echo "$index: ${doubletDictionary[$index]},"
done
