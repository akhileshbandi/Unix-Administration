## Generate Lotto Numbers: 
This script randomly generates the lottery numbers for you: 
1) Loto 
2) Euro Million 
3) Exit 
Select your game:1 
Loto Logic: Generate 5 random numbers between 1 and 49, and a lucky number between 1 and 10. 

EuroMillion Logic: , Generate 5  random numbers between 1 and 50, and two different numbers (denoted by stars/étoiles) between 1 and 12. 

	#!/bin/bash
	while true
	do
	echo -n "This script randomly generates the lottery numbers you:
	1) Loto
	2) Euro Million
	3) Exit

	Select Your Game"
	read choice
	case $choice in
	  1)echo "numbers are"; shuf -i 1-49 -n 5
		echo "Lucky"; shuf -i 1-10 -n 1
	  ;;
	  2)echo "numbers are "; shuf -i 1-50 -n 5 
		echo "Stars"; shuf -i 1-12 -n 2
	  ;;
	  3) exit

	esac
	done

 

##  Script which loops by asking the user to enter marks or 'q' key to indicate the end of the entry. The script should save whole marks in a file and display: 
a. The number of marks entered 
b. The average 
c. The maximum value 
d. The minimum value 
e. The number of marks below 10 
		
	#!/bin/bash
	total=0
	max=''
	min=''
	tens=0
	while true
	do
	echo -e "enter a value or q to exit"
	read num
	if [ "$num" != "q" ]
	then
	arr[${#arr[@]}]="$num"
	total=$((total+num))
	
	if [ "$min" == '' ]
	 then 
		min=$num
	fi

	if [ $min -gt $num ]
	then 
		min=$num
	fi

	if [ "$max" == '' ]
	 then 
	        max=$num
	fi

	if [ $max -lt $num ]
	then 
	max=$num
	fi

	if [ $num -lt 10 ]
	then
		tens=$((tens +1))
	fi

	else
		break

	break
	fi
	done
	numberofElement=${#arr[*]}
	echo  "Number of Marks entered: ${#arr[*]}"
	echo  "The  average is : $((total/numberofElement))"
	echo  "The minimum is : $min"
	echo  "The maximum is : $max"
	echo "The number of elements less than 10 : $tens"

## Script that takes two operands and an operator (+, -, x, /, pow, mod) as argument, verifies and then shows result 

	#!/bin/bash
	if [ $# -ne 3 ]
	then 
	echo "Invalid arguments"
	else
	case $2 in
	  +)echo "$(($1 + $3))"
	  ;;                      
	  -)echo "$(($1 - $3))"
	  ;;
	  x)echo "$(($1 * $3))"
	  ;;
	  /)echo "$(($1 / $3))"
	  ;;
	  mod)echo "$(($1 % $3))"
	  ;;
	  pow)echo "$(($1 ** $3))"
	  ;;

	esac
	fi

## Factorial with input verification (needs to be one number) 

	#!/bin/bash

	num=$1
	fact=1
	if [ $# -gt 1 ]

	        then
	        read -p " Enter only one value" num
	fi
	for((i=2;i<=num;i++))
	{
	fact=$((fact * i))  #fact = fact * i
	}
	 
	echo $fact

## Fill and Bubble sort an array. 

	#!/bin/bash
	echo "Enter your array"
	read -a array
	readarray -td '' b < <(printf '%s\0' "${array[@]}" | sort -z) 
	echo ${b[*]}

## Bash script that displays the number of characters in each line of a file passed as an argument. 
	
	#!/bin/bash
	cat $1 | while read line
	do
	count=$(echo $line | wc -m)
	echo $line $count 

	done

## Bash script for number transformations: binary, octal and hexadecimal. 
	#!/bin/bash
	read -p "Enter the Number" num
	num1=$(echo "obase=2;$num" | bc)
	num2=$(echo "obase=8;$num" | bc)
	num3=$(echo "obase=16;$num" | bc)
	echo $num1 
	echo $num2
	echo $num3
## Script to count bash files (even without extension .sh). 
	#!/bin/bash
	c=0
	for f in `ls`; do
	if grep -qe '#!/bin/bash' $f; 
	then
	c=$((c+1))
	fi
	done
	echo "Number of Bash files is $c"



## Script to check word exists in Dictionary . 
The dictionaries are in: /usr/share/dict 
	
	#!/bin/bash
	if grep -qwxF $1 /usr/share/dict/french;
	then 
	echo "found $1"
	else 
	echo not found
	fi

## Returns the days in a month

	#!/bin/bash
	if [ $1 -gt 1 ] &&  [ $1 -lt 12 ];
	then
	  date -d "$1/1 + 1 month - 1 day" "+%b - %d days"; 
	else 
	echo Invalid argument please give a number between 1 and 12
	fi

## Delete duplicated files (same content with different names). 

	#!/bin/bash

	files=(*)
	count=${#files[@]}
	for (( i=0 ; i < count ;i++ )); do 
	for (( j=i+1 ; j < count ; j++ )); do
	if diff -q "${files[i]}" "${files[j]}"  >/dev/null ; then
	rm ${files[j]}
	fi
	done
	done

## Delete files greater than xx MB 

	#!/bin/bash
	find -size +100M -delete

## Capitalise all in alpha-numeric string

	#!/bin/bash
	read -p "Enter the Input string " chain
	chain=${chain^^}
	echo "${chain}"
