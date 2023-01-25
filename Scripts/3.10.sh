#!/bin/bash
if grep -qwxF $1 /usr/share/dict/french;
then 
echo "found $1"
else 
echo not found
fi
