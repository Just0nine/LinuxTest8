#!/bin/bash
sum=0
for (( i =2; i <100; i++ ))
do
	(( sum +=i ))
done

echo $sum
