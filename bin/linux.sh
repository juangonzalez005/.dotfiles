#!/bin/bash
# check if os is linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error; not Linux" >> linuxsetup.log
	exit
fi

# create trash in home
mkdir -p ~/.TRASH/

# rename if existing
if [ -e ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "the current .nanorc file was changed to .bup_nanorc" >> linuxsetup.log
fi

# overwrite contents
cat etc/.nanorc > ~/.nanorc

# append the source command
echo "source ∼/.dotfiles/etc/bashrc custom" >> ~/.bashrc
