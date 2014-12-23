#!/bin/sh

source ~/.dmenurc

available_layouts=$(ls -A1 ~/.i3/layout/)
selected_layout=$(echo $available_layouts | eval "dmenu $DMENU")

i3-msg "append_layout $(pwd)/.i3/layout/$selected_layout"
