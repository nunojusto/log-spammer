#!/bin/sh
n=-1
c=0
if [ -n "$3" ]
then
   n=$3
fi

while [ $n -ne $c ]
do
   WAIT=$(shuf -i $1-$2 -n 1)
   sleep $(echo "scale=4; $WAIT/1000" | bc)
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   RM=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 42 ; echo ''`
   case "$I" in
      "1") echo "$D ERROR Message $RM."
      ;;
      "2") echo "$D INFO Message $RM."
      ;;
      "3") echo "$D WARN Message $RM."
      ;;
      "4") echo "$D DEBUG Message $RM."
      ;;
   esac
   c=$(( c+1 ))
done
