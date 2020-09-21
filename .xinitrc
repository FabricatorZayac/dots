#! /bin/bash

xrandr --auto

setxkbmap -option caps:escape

WM='dwm'

setxkbmap us,ru -option grp:alt_shift_toggle
xsetroot -cursor_name left_ptr &
picom &
feh --bg-fill ~/pix/wallpapers/gojira-from-mars-to-sirius.jpeg

exec $WM
