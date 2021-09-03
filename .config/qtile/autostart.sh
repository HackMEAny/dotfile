#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
volumeicon &
nm-applet &
# nitrogen --restore &
feh --randomize --bg-fill -D 2 ~/wallpapers/* &
picom &
sh ./mount.sh &
