#!/bin/bash
# Append /Documents/useful-commands.txt with new commands


USER=$(whoami)

#Checking for file and creating one if not found
#Personalize path below:
FILE=/home/chase/Documents/useful-commands.txt
if [ ! -f "$FILE" ]; then
	echo "$FILE does not exist, creating one in your current directory" && touch ./useful-commands.txt 
fi


# Defining the append function to clean the code up below
function APPEND_FILE {
	echo $NEWCOMMAND >> /home/chase/Documents/useful-commands.txt
}

until [[ $RESPONSE = "y" ]]; do
	read -p "What command would you like to add? " NEWCOMMAND 
	read -p "$NEWCOMMAND - is that correct? (y/n) " RESPONSE 
	if [[ $RESPONSE = "y" ]]; then
		APPEND_FILE
		echo "Thank you, $USER. $NEWCOMMAND has been added"
	fi
done

#No loop version:  
#[ $RESPONSE == 'y' ] && APPEND_FILE && echo "$NEWCOMMAND has been added" || echo "See you later" && exit 0



