#!/bin/sh

xset b off
xset b 0 0 0
xrdb -merge ~/.Xresources

setxkbmap de
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

exec dbus-launch i3 
