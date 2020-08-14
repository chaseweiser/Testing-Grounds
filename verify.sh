#!/bin/bash

# Simple Bash script to compare two hashes


user=$(whoami)
date=$(date +%A)

echo "Hello $user. Please paste your hashes below to verify:"
read -p "Hash #1: " HASH1
read -p "Hash #2: " HASH2

[ $HASH1 ==  $HASH2 ] && echo "We're good to go cap!" || echo "We have a problemo"

< counter_file read counter
counter=$(( $counter + 1 ))
echo $counter > counter_file
echo "You have verified $counter hashes"

