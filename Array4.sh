#!/bin/bash -x

arr=(1 4 -5)
echo ${arr[@]}
add=0

for i in ${arr[@]}
do
	add=`expr $add + $i`
done
echo $add
