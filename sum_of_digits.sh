#!/bin/bash
if [ -z "$1" ]; then
    read -p "Enter a number: " num
else
    num=$1
fi
original=$num
sum=0
while [ $num -gt 0 ]; do
    rem=$((num % 10))
    sum=$((sum + rem))
    num=$((num / 10))
done
echo "Sum of digits of $original is $sum"
