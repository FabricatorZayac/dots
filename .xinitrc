#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

setxkbmap -option caps:escape
setxkbmap -layout us,ru -option grp:alt_shift_toggle
setxkbmap -option compose:ralt

# feh --bg-fill ~/pix/wallpapers/from-mars-to-sirius-16x10.jpg

exec bspwm
