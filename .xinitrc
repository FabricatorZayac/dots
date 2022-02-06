#! /bin/bash

xrandr --auto

WM='stumpwm'

setxkbmap -option caps:escape
setxkbmap us,ru -option grp:alt_shift_toggle
setxkbmap -option compose:ralt
xsetroot -cursor_name left_ptr &
picom &
# feh --bg-fill ~/pix/wallpapers/gojira-from-mars-to-sirius.jpeg
feh --bg-fill ~/pix/wallpapers/departureSongs.jpeg

exec $WM
