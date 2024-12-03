#!/bin/bash
# remove .nanorc from home
if [ -e ~/.nanorc ]; then
	rm ~/.nanorc
fi

# remove the line that was written
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# remove .trash from home
if [ -d ~/.TRASH ]; then
    rm -rf ~/.TRASH
fi

