#!/bin/bash

# Simple Bash script to compare two hashes


USER=$(whoami)
FILE=./.COUNTER_FILE

#Ensure COUNTER_FILE exists and create one if not
if [ ! -f "$FILE" ]; then
	touch .COUNTER_FILE
fi


echo "Hello $USER. Please paste your hashes below to verify:"
read -p "Hash #1: " HASH1
read -p "Hash #2: " HASH2

[ $HASH1 ==  $HASH2 ] && echo "The hashes are the same" || echo "Errors detected"

< .COUNTER_FILE read COUNTER
COUNTER=$(( $COUNTER + 1 ))
echo $COUNTER > .COUNTER_FILE
echo "You have compared $COUNTER hashes"


