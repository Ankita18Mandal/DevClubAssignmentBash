#!bin/bash
cd "$1"

find -maxdepth 1 -type f | wc -l

ls *"$2" | wc -l

exit -1
