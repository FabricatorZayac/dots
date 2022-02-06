#! /bin/bash

xrandr --auto

WM='bspwm'

setxkbmap -option caps:escape
setxkbmap us,ru -option grp:alt_shift_toggle
setxkbmap -option compose:ralt
xsetroot -cursor_name left_ptr &
picom &
feh --bg-fill ~/pix/wallpapers/gojira-from-mars-to-sirius.jpeg

exec $WM
