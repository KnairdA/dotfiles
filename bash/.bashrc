# If not running interactively, don't do anything
[[ $- != *i* ]] && return

host=`hostname`

if [ $host = "automatix" ] || [ $host = "asterix" ]; then
	[ -z "$TMUX" ] && { tmux attach || exec tmux new && exit; }
fi

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

if [[ "$TERM" != linux ]]; then
	exec fish
fi
