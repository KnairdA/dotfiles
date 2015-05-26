#!/bin/sh

source ~/.dmenurc

selected_layout=$(ls -A1 ~/.i3/layout/ | eval "dmenu $DMENU")

i3-msg "append_layout $(pwd)/.i3/layout/$selected_layout"
