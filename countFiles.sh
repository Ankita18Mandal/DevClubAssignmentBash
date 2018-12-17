#!/bin/bash
cd "$1"
ls -f . | wc -l
exit 1