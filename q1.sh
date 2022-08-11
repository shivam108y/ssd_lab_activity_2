#!/bin/bash

file=$1
#echo pwd
#curr= pwd
wc -l $1|awk '{print $1}'>temp.txt
#file=`echo "$curr""temp.txt"`
file="temp.txt"
#echo $file
chmod "+x" $file 
read -r lines<temp.txt
#echo $lines
num2=2
#mid= awk "BEGIN {print int($lines/2)}"
#mid= awk "BEGIN {print int($lines/2)}"
mid=$(($lines / $num2))
#echo "$mid"
#echo $(($lines / $num2))
head -n $mid $1|tail -1
#echo $mid
