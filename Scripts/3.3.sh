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
