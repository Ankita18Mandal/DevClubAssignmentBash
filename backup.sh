#!/bin/bash
cd "$1"
string1="Files copied from "$1" to "$2" are:"
for x in *
do
if ! [ -e "$2"/"$x" ] ;
then
string1="$string1 "$x""
fi
done
string2="Files copied from "$2" to "$1" are:"
cd "$2"
for x in *
do
if ! [ -e "$1"/"$x" ] ;
then
string2="$string2 "$x""
fi
done
cd "$1"
cp -R * "$2"
cd "$2"
cp -R * "$1"
echo "$string1"
echo "$string2"