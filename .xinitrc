xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

setxkbmap -option caps:escape
setxkbmap -layout us,ru -option grp:alt_shift_toggle &

#exec bspwm
exec ratpoison
