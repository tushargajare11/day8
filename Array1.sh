#!/bin/bash -x

#generate random 3 digit

var1=10
count=1

while [ $count -le $var1 ]
do
    number[$count]=${RANDOM:0:3}
    ((count++))
done
    echo ${number[@]}

#for 2nd largest
l1=0
l2=0
for ((i=0; i<${#number[@]}; i++))
do
        if [[ ${number[$i]} -gt $l1 ]]
        then
                l2=$l1;
                l1=${number[$i]};
        elif [[ ${number[$i]} -gt $l2 ]] && [[ ${number[$i]} -lt $l1 ]]
        then
                l2=${number[$i]};
        fi
done
echo "2nd largest number is:" $l2

#for 2nd smallest
l3=1000
l4=1000
for ((i=0; i<${#number[@]}; i++))
do
        if [[ ${number[$i]} -lt $l3 ]]
        then
                l4=$l3;
                l3=${number[$i]};
        elif [[ ${number[$i]} -lt $l4 ]] && [[ ${number[$i]} -gt $l3 ]]
        then
                l4=${number[$i]};
        fi
done
echo "2nd smallest number is:" $l4

