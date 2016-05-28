# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

if [[ "$TERM" != linux ]]; then
	exec fish
fi
