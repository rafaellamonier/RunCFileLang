#!/bin/bash

#######################################################
#
# runCFile.sh - compile and run a file in C Lang
# 
# Author: Rafael Andrade Lamonier
# Date Create: 18/11/2024
#
# Description: Compile and run any file write in C Lang.
# How to run: execute ./runCFile.sh nameFile.c
#
#######################################################

clear

file_name=$1
file_name_without_extension="${file_name%.*}"

# Show pattern
cat ~/scripts/runCFile/pattern.txt

echo "Excuting: $file_name"

# Compile file
gcc $1 -o $file_name_without_extension

# Permit file 
chmod +x $file_name_without_extension
 
# Execute file compiled
./$file_name_without_extension

echo "End of execution"

