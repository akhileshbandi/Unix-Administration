#!/bin/bash
num=$1
num1=$(echo "obase=2;$num" | bc)
num2=$(echo "obase=8;$num" | bc)
num3=$(echo "obase=16;$num" | bc)
echo $num1 
echo $num2
echo $num3
