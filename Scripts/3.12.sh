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
