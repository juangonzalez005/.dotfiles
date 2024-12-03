# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.

## linux.sh
This script configures a Linux environment by creating a .TRASH directory, backing up the existing .nanorc file, and copying new configurations from etc/.nanorc. It also appends a custom command to the .bashrc file to source additional configurations. The script ensures it only runs on Linux and logs important actions to linuxsetup.log.

## cleanup.sh
The cleanup.sh script reverses the changes made by linux.sh by deleting the .nanorc file, removing the .TRASH directory, and cleaning up the custom configuration line from the .bashrc file. It ensures that the environment is restored to its original state.

## Makefile
This Makefile automates the execution of the linux.sh and cleanup.sh scripts for setting up and cleaning a Linux environment. The linux target runs the linux.sh script and depends on the clean target, which ensures that any previous configurations are removed before setup. The clean target executes the cleanup.sh script to reverse the changes made by linux.sh.