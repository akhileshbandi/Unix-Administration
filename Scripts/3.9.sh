#!/bin/bash
c=0
for f in `ls`; do
if grep -qe '#!/bin/bash' $f; 
then
c=$((c+1))
fi
done
echo "Number of Bash files is $c"


