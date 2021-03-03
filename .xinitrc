#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

setxkbmap -option caps:escape
setxkbmap -layout us,ru -option grp:alt_shift_toggle
setxkbmap -option compose:ralt

xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -- mpv -wid WID --loop --no-audio --no-resume-playback --panscan=1.0 ~/pix/wallpapers/animation/amesame.mp4 &
exec bspwm
