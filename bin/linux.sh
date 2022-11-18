#!/bin/bash
#The shebang
OS=$(uname)
# Creates a variable for the uname
if [ $OS != "Linux" ]
# Checks if the OS is Linux
then
# proceeds to the commands if the if statement is true
	echo "error" >> linuxsetup.log
# Adds the error mesage to the linuxsetup.log file
	exit
# Exits the terminal
fi
# Ends the if statement
mkdir ~/.TRASH
# Makes the .TRASH directory
if [ -e ~/.vimrc ]
# Checks if the .vimrc file exists
then
# Excutes the commands if the if statement is true
	mv ~/.vimrc ~/.bup_vimrc
# Changes the name of the .vimrc file to .bup_vimrc
	echo "vimrc is now bup_vimrc" >> linuxsetup.log
# Notes the change of name in the linuxsetup.log file
fi
# Ends the if statement
touch ~/.vimrc
# Makes the .vimrc file
cp ./etc/vimrc  ~/.vimrc
# Transfers the contents of the vimrc file to the .vimrc file
echo "source ∼/.dotfiles/etc/bashrc custom" >> ~/.bashrc
# Appends the text to the end of the .bashrc file
