#!/bin/bash
echo "Enter your array"
read -a array
readarray -td '' b < <(printf '%s\0' "${array[@]}" | sort -z) 
echo ${b[*]}
