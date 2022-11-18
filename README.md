Makefile:
The make file runs the cleanup.sh script followed by the linux.sh script.

cleanup.sh:
 The cleanup.sh script removes the .vimrc file from the home directory. Removes the statement 'source ∼/.dotfiles/etc/bashrc custom’ from the .bashrc file by removing the last line. And finally it removes the .TRASH directory if it exists.

linux.sh:
 The linux.sh script first checks if the OS is Linux. If it is not linux and error message will be added to the linuxsetup.log and the terminal will exit. Next the .TRASH directory is created in the home directory if it does not exist. Then the script will rename the .vimrc file if it exists and add a note to the linuxsetup.log on the the change. Next it creates the .vimrc file in the home directory and copies the contents of the vimrc file int the etc directory to the .vimrc file. Finally the statement 'source ∼/.dotfiles/etc/bashrc custom’ is added to the end of the .bashrc file.

.vimrc:
 The .vimrc file configures the vim to show all syntax errors, show numbers on every line, auto-indents new lines, shows row and column information, sets the colors used to the elflord pattern, and sets the shiftwidth to 8.

.bashrc custom:
 The .bashrc custom file provides alias to make commands and functions easier to execute.
