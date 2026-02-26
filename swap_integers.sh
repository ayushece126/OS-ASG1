#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ]; then
    read -p "Enter first integer: " a
    read -p "Enter second integer: " b
else
    a=$1
    b=$2
fi
echo "Before swapping: a=$a, b=$b"
temp=$a
a=$b
b=$temp
echo "After swapping: a=$a, b=$b"
