#!/bin/bash
if [ -z "$1" ]; then
    read -p "Enter a number: " num
else
    num=$1
fi
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is Even"
else
    echo "$num is Odd"
fi
