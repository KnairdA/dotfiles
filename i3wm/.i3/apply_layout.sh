#!/bin/sh

selected_layout=$(ls -A1 ~/.i3/layout/ | eval "rofi -dmenu -p 'Layout:'")

i3-msg "append_layout $(pwd)/.i3/layout/$selected_layout"
