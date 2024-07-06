#!/bin/bash
a=$1
c=$2
if [[ -z "$c" ]]
then 
y=100
fi
case "$a" in
  "--date" | "-d" ) date -u ;;
  "--logs" | "-l" ) b=1
  while [ $b -le $c ]
do
touch log"$b".txt
echo log"$b".txt >> log"$b".txt
echo "stworzony przez skrypt.sh w dniu o godzinie:" >> log"$b".txt
date -u >> log"$b".txt
b=$((b+1))
done 
;;
  "--error" | "-e") b=1
  while [ $b -le $c ]
do
mkdir error"$b"
cd error"$b"
touch error"$b".txt
echo error"$b".txt >> error"$b".txt
echo "stworzony przez skrypt.sh w dniu o godzinie:" >> error"$b".txt
date -u >> error"$b".txt
cd -
b=$((b+1))
done
;;
"--help" | "-h") echo "Dostepne komendy:"
echo "--date | -d"
echo "--logs | -l"
echo "--help | -h"
echo "--error | -e"
  *) echo "funkcja nie została podana" ;;
esac
