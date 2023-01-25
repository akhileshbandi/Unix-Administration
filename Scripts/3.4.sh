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
