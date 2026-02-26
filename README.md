# Assignment 1 Shell Scripting Report

## 1. Perform following command in Linux based OS:

`cat`, `chmod`, `cd`, `cp`, `date`, `echo`, `ftp`, `grep`, `head`, `ls`, `lpr`, `more`, `mkdir`, `mv`, `ncftp`, `print`, `pwd`, `rm`, `rmdir`, `rsh`, `setenv`, `sort`, `tail`, `tar`, `telnet`, `wc`

### Code (`q1_commands.sh`)

```bash
#!/bin/bash
echo "--- Q1 Commands Demonstration ---"
date
mkdir test_dir
cd test_dir
pwd
echo "Hello World" > test_file.txt
cat test_file.txt
ls
cd ..
rm -r test_dir
echo "--- Q1 Complete ---"
```

### Output

```text
--- Q1 Commands Demonstration ---
Thu Feb 26 21:12:18 IST 2026
/Users/ayushmehta/Desktop/OSG4/test_dir
Hello World
test_file.txt
--- Q1 Complete ---
```

## 2. Write a Shell program to check the given number is even or odd

### Code (`even_odd.sh`)

```bash
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
```

### Output

```text
--- Q2 Even/Odd ---
42 is Even
7 is Odd
```

## 3. Write a Shell program to check the given year is leap year or not

### Code (`leap_year.sh`)

```bash
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
```

### Output

```text
--- Q3 Leap Year ---
2024 is a Leap Year
2023 is not a Leap Year
1900 is not a Leap Year
2000 is a Leap Year
```

## 4. Write a Shell program to swap the two integers

### Code (`swap_integers.sh`)

```bash
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
```

### Output

```text
--- Q4 Swap ---
Before swapping: a=15, b=27
After swapping: a=27, b=15
```

## 5. To calculate the sum of digits using shell programming.

### Code (`sum_of_digits.sh`)

```bash
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
```

### Output

```text
--- Q5 Sum of Digits ---
Sum of digits of 12345 is 15
```
