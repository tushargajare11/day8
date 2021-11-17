#!/bin/bash -x

maxCount=10
count=1

#for generating 10 Random numbers
while [ $count -le $maxCount ]
do
        number[$count]=${RANDOM:0:3}
        ((count++))
done
echo ${number[@]}


for ((i=1; i<=${#number[@]}; i++))
do
        for ((j=$i+1; j<=${#number[@]}; j++))
        do
                if [ ${number[$i]} -gt ${number[$j]} ]
                then
                        temp=${number[$i]}
                        number[i]=${number[$j]}
                        number[j]=$temp

                fi
        done
done

echo ${number[@]}

echo "second largest number is: " ${number[$i-2]}
echo "second smallest number is: " ${number[2]}
