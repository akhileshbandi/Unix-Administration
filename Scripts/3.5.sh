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
