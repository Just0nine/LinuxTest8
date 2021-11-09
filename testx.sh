#!/bin/bash

read -a array
for (( i =0; i < ${#array[@]}; i++ ))
do
#	for (( j =i+1; j < ${ #array[*] }; j++ ))
	for (( j =0; j < ${#array[@]}-1; j++ ))
	do
		#if [ array[j] -gt array[j+1] ]
		if [ ${array[j]} -gt ${array[j+1]} ];then
			#then
				#=左右不能有空格
				#num =${array[j]}
				#array[j] =${array[j+1]}
				#array[j+1] =$num

				num=${array[j]}
				array[j]=${array[j+1]}
				array[j+1]=$num
		fi
	done
done

echo ${array[@]}
