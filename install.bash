#!/usr/bin/bash

echo This will REPLACE your current configs if you have them
read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	DIR=$(pwd)
	echo $DIR

	if [-e $HOME/.tmux.conf]
	then
		rm $HOME/.tmux.conf
	fi
	ln -s $DIR/.tmux.conf $HOME/.tmux.conf

	if [-e $HOME/.tmux.conf]
	then
		rm $HOME/.vimrc
	fi
	ln -s $DIR/.vimrc $HOME/.vimrc

	if [-e $HOME/.Xmodmap]
	then
		rm $HOME/.Xmodmap
	fi
	ln -s $DIR/.Xmodmap $HOME/.Xmodmap

	if [-e $HOME/.xinitrc]
	then
		rm $HOME/.xinitrc
	fi
	ln -s $DIR/.xinitrc $HOME/.xinitrc

	if [ ! -e $HOME/.config ];
	then
		mkdir $HOME/.config
	fi

	rm $HOME/.config/mimeapps.list
	ln -s $DIR/mimeapps.list $HOME/.config/mimeapps.list
	rm $HOME/.local/share/applications/zathura.desktop
	ln -s $DIR/desktopEntries/zathura.desktop $HOME/.local/share/applications/zathura.desktop

	rm -r $HOME/.config/polybar
	ln -s $DIR/polybar $HOME/.config/polybar

	if [ ! -e $HOME/.config/alacritty ];
	then
		mkdir $HOME/.config/alacritty
	else
		rm $HOME/.config/alacritty/alacritty.yml
	fi
	ln -s $DIR/alacritty.yml $HOME/.config/alacritty/alacritty.yml

	if [ ! -e $HOME/.config/bspwm ];
	then
		mkdir $HOME/.config/bspwm
	else
		rm $HOME/.config/bspwm/bspwmrc
	fi
	ln -s $DIR/bspwmrc $HOME/.config/bspwm/bspwmrc

	if [ ! -e $HOME/.config/sxhkd ];
	then
		mkdir $HOME/.config/sxhkd
	else
		rm $HOME/.config/sxhkd/sxhkdrc
	fi
	ln -s $DIR/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

	echo This is needed for polybar to start
	sudo cp $DIR/polybar/polybarstart /bin/polybarstart

else
	exit 0
fi
