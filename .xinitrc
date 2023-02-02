#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# export WM=bspwm
# export WM=dwm
export WM=i3

exec $WM
