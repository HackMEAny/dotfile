#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
lxsession &
xset r rate 300 50 &
volumeicon &
nm-applet &
# nitrogen --restore &
feh --randomize --bg-fill -D 2 ~/wallpapers/* &
dunst &
picom &
copyq &
# noisetorch -i alsa_input.usb-0c76_USB_PnP_Audio_Device-00.mono-fallback &
noisetorch -i -s alsa_input.usb-0c76_USB_PnP_Audio_Device-00.mono-fallback -t 95 &
# sh ./mount.sh &
