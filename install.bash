#!/usr/bin/bash

echo This will REPLACE your current configs if you have them
read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	DIR=$(pwd)
	echo $DIR

	if [-e ~/.tmux.conf]
	then
		rm ~/.tmux.conf
	fi
	ln -s $DIR/.tmux.conf ~/.tmux.conf

	if [-e ~/.tmux.conf]
	then
		rm ~/.vimrc
	fi
	ln -s $DIR/.vimrc ~/.vimrc

	if [-e ~/.Xmodmap]
	then
		rm ~/.Xmodmap
	fi
	ln -s $DIR/.Xmodmap ~/.Xmodmap

	if [-e ~/.xinitrc]
	then
		rm ~/.xinitrc
	fi
	ln -s $DIR/.xinitrc ~/.xinitrc

	if [ ! -e ~/.config ];
	then
		mkdir ~/.config
	fi

	rm ~/.config/mimeapps.list
	ln -s $DIR/mimeapps.list ~/.config/mimeapps.list
	rm ~/.local/share/applications/zathura.desktop
	ln -s $DIR/desktopEntries/zathura.desktop ~/.local/share/applications/zathura.desktop

	rm -r ~/.config/polybar
	ln -s $DIR/polybar ~/.config/polybar

	if [ ! -e ~/.config/alacritty ];
	then
		mkdir ~/.config/alacritty
	else
		rm ~/.config/alacritty/alacritty.yml
	fi
	ln -s $DIR/alacritty.yml ~/.config/alacritty/alacritty.yml

	if [ ! -e ~/.config/bspwm ];
	then
		mkdir ~/.config/bspwm
	else
		rm ~/.config/bspwm/bspwmrc
	fi
	ln -s $DIR/bspwmrc ~/.config/bspwm/bspwmrc

	if [ ! -e ~/.config/sxhkd ];
	then
		mkdir ~/.config/sxhkd
	else
		rm ~/.config/sxhkd/sxhkdrc
	fi
	ln -s $DIR/sxhkdrc ~/.config/sxhkd/sxhkdrc

	echo This is needed for polybar to start
	sudo cp $DIR/polybar/polybarstart /bin/polybarstart

else
	exit 0
fi
