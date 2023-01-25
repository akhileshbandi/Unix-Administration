#!/bin/bash
if [ $1 -gt 1 ] &&  [ $1 -lt 12 ];
then
  date -d "$1/1 + 1 month - 1 day" "+%b - %d days"; 
else 
echo Invalid argument please give a number between 1 and 12
fi
