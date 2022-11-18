#!/bin/bash
# This is the shebang
rm ~/.vimrc
# This removes the .vimrc file in the home directory
sed '$d' ~/.bashrc
# This removes the last line in the .bashrc file
rm -rf ~/.TRASH 
# This removes the .TRASH directory
