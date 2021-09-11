# automatically run startx when logging in on tty1
[ -z "$DISPLAY" ] && [ $XDG_VTNR -eq 1 ] && startx
