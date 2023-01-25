#!/bin/bash
while true
do
echo -n "This script randomly generates the lottery numbers you:
1) Loto
2) Euro Million
3) Exit

Select Your Game"
read choise
case $choise in
  1)echo "numbers are"; shuf -i 1-49 -n 5
	echo "Lucky"; shuf -i 1-10 -n 1
  ;;
  2)echo "numbers are "; shuf -i 1-50 -n 5 
	echo "Stars"; shuf -i 1-12 -n 2
  ;;
  3) exit

esac
done

