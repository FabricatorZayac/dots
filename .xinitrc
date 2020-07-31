xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

setxkbmap -option caps:escape

exec bspwm
#exec ratpoison
