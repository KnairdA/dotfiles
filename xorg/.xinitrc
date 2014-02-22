#!/bin/sh

xset b off
xset b 0 0 0
xrdb -merge ~/.Xresources

setxkbmap de
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

source /etc/X11/xinit/xinitrc.d/30-dbus
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

exec dbus-launch i3 
