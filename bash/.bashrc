# If not running interactively, don't do anything
[[ $- != *i* ]] && return

host=`hostname`

if [ $host = "automatix" ] || [ $host = "asterix" ]; then
	if [ -z "$STY" ]; then
		exec screen -R
	fi
fi

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

if [[ "$TERM" != linux ]]; then
	exec fish
fi
