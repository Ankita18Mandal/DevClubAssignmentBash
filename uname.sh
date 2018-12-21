#!/bin/bash
filename="$1"
extension="${filename##*.}"
if [[ "$1" = "" ]] || [[ "$2" = "" ]] || [[ ! -R "$1" ]] ||  [[ ! ".extension" == ".txt" ]]
then
exit -1
else
variable=$(grep -r "$2" "$1")
answer=$(echo $variable | cut -d '/' -filename 10)
echo "$answer"
fi
