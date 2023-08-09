#!/bin/sh
# load $XDG_CONFIG_HOME/X11/xprofile file if it exists; otherwise, load ~/.xprofile
[ -f "$HOME"/.config/X11/xprofile ] && source "$HOME"/.config/X11/xprofile || source ~/.xprofile
[[ -f ~/.config/X11/xprofile/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#exec qtile start
while :; do
	pkill dwm_bar; dwm_bar & dwm
done
#exec dwm
#exec dbus-launch --exit-with-session dwm
