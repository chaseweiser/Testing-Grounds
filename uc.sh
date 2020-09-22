#!/bin/bash
# Append /Documents/useful-commands.txt with new commands


user=$(whoami)
# Defining the append function to clean the code up below
function APPEND_FILE {
	echo $NEWCOMMAND >> /home/chase/Documents/useful-commands.txt
}

#until [[ $RESPONSE = "y" ]]; do 
#	echo "What command would you like to add? " 
#	read NEWCOMMAND 
#	echo "$NEWCOMMAND - is that correct? (y/n)" 
#	read RESPONSE
#	if [[ $RESPONSE = "y" ]]; then
#		APPEND_FILE
#		echo "Thank you, $USER. $NEWCOMMAND has been added"
#	fi
#done
#echo "Exiting now..."

#[ $RESPONSE == 'y' ] && APPEND_FILE && echo "$NEWCOMMAND has been added" || echo "See you later" && exit 0


until [[ $RESPONSE = "y" ]]; do
	read -p "What command would you like to add? " NEWCOMMAND 
	read -p "$NEWCOMMAND - is that correct? (y/n) " RESPONSE 
	if [[ $RESPONSE = "y" ]]; then
		APPEND_FILE
		echo "Thank you, $USER. $NEWCOMMAND has been added"
	fi
done
echo "Exiting now..."






