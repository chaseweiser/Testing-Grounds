#!/bin/bash
# Append /Documents/useful-commands.txt with new commands


# Defining the append function to clean the code up below
function append_file {
	echo $newcommand >> /home/chase/Documents/useful-commands.txt
}

user=$(whoami)

echo "What command would you like to add, $user?"
read newcommand
echo $newcommand '- correct? (y/n)'
read response

# Eventually come back in and make this loop back if 'n' is entered
[ $response == 'y' ] && append_file && echo "$newcommand has been added" || echo "Better luck next time" && exit
