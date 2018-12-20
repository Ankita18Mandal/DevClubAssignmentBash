#!/bin/bash
set -o noglob
let n=0
let input=0
for x in $(cat "$1")
do
if [[ $x == *[+]* ]] ;
then
let n=n+"$input"
elif [[ $x == *[-]* ]] ;
then 
let n=n-"$input"
elif [[ $x == *[*]* ]] ;
then
 let n=n*"$input"
elif [[ $x == *[/]* ]] ;
then
let n=n/"$input"
else
let input="$x"
fi
done
echo "$n"
exit