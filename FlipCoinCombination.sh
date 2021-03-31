#! /bin/bash
echo "Welcome to Flip coin Combination problem"
Head=1
if [ $((RANDOM%2)) -eq $Head ]
   then
	echo "**Head**"
   else
	echo "***Tail***"
fi

#VARIABLES
headCount=0
tailCount=0
#TO STORE HEAD COUNT AND TAIL COUNT IN DICTIONARY
read -p "Enter number of times to flip a combination:" no_of_flips
declare -A singlet_frequency=( 

                            [H]=0
                            [T]=0

                              )
echo "---------------SINGLET-COMBINATION---------------------"
for(( flip = 1; flip <= no_of_flips; flip++ ))
do
    echo -n "Flip-$flip is "
    (( toss = RANDOM % 2 ))
    case $toss in 
        0)
            echo "Heads"
            (( singlet_frequency[H]++ ))
            ;;
        1)
            echo "Tails"
            (( singlet_frequency[T]++ ))
	     ;;
    esac
done

for combination in ${!singlet_frequency[@]}
do
    #update count values  with corresponding percentage
    percentage=$(( ${singlet_frequency[$combination]}  * 100 / no_of_flips ))
    singlet_frequency[$combination]=$percentage
    echo "percentage of $combination is ${singlet_frequency[$combination]}%"   
done
