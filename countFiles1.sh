#!/bin/bash
#Assignment Question 1
echo "first arg is $1 which is path of directory and the second is
 $2 for extension."
cd "$1"
echo "$(ls)" > tempfile.txt
tr ' ' '\n' < ./tempfile.txt | grep -c "$2"
rm tempfile.txt