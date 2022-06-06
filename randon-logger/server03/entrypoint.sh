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
   #D=`date -Iseconds`
   #D=$(date +%d/%m/%Y:%H:%M:%S)
   D=$(date +%d/%b/%Y:%H:%M:%S)
   UTC=$(date +%z)
   D_UTC="$D $UTC"

   case "$I" in
      "1") echo "$D_UTC ERROR - Server01 - 192.168.30.30  - Problemas econtrados."
      ;;
      "2") echo "$D_UTC INFO - Server01 - 192.168.30.30 - Dado inserido no banco de dados."
      ;;
      "3") echo "$D_UTC WARN - Server01 - 192.168.30.30 - Disco está com menos de 90% de espaço livre"
      ;;
      "4") echo "$D_UTC DEBUG - Server01 - 192.168.30.30 - Dado removido do banco de dados."
      ;;
   esac
   c=$(( c+1 ))
done