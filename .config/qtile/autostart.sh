#!/bin/sh

lxsession &
xset r rate 300 50 &
volumeicon &
nm-applet &
feh --randomize --bg-fill -D 2 ~/.config/Wallpapers/* &
dunst &
udiskie -t &
picom --experimental-backends --backend glx --xrender-sync-fence &
copyq &
noisetorch -i -s alsa_input.usb-0c76_USB_PnP_Audio_Device-00.mono-fallback -t 95 &
#libinput-gestures &
