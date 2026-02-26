#!/bin/bash
if [ -z "$1" ]; then
    read -p "Enter a year: " year
else
    year=$1
fi
if [ $((year % 400)) -eq 0 ]; then
    echo "$year is a Leap Year"
elif [ $((year % 100)) -eq 0 ]; then
    echo "$year is not a Leap Year"
elif [ $((year % 4)) -eq 0 ]; then
    echo "$year is a Leap Year"
else
    echo "$year is not a Leap Year"
fi
