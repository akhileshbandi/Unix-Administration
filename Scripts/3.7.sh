#!/bin/bash
cat $1 | while read line
do
count=$(echo $line | wc -m)
echo $line $count 

done
