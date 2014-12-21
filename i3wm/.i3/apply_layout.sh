#!/bin/sh

available_layouts=$(ls -A1 ~/.i3/layout/)
selected_layout=$(echo $available_layouts | dmenu -fn 'Droid Sans Mono-11' -nb '#222222' -nf '#605c5a' -sb '#111111' -sf '#aadb0f')

i3-msg "append_layout $(pwd)/.i3/layout/$selected_layout"
