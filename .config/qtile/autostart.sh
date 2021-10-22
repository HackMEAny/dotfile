#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
volumeicon &
nm-applet &
# nitrogen --restore &
feh --randomize --bg-fill -D 2 ~/wallpapers/* &
dunst &
picom &
copyq &
noisetorch -i "alsa_input.usb-0c76_USB_PnP_Audio_Device-00.mono-fallback" &
sh ./mount.sh &
