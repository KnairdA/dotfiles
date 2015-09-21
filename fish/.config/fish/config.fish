umask 0077

set EDITOR vim
set PATH $PATH /usr/local/texlive/2014/bin/x86_64-linux

set fish_greeting ""

alias csi='csi -q'
alias i='sxiv'

eval (dircolors -c ~/.dir_colors)

if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx
	end
end
