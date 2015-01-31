umask 0077

set EDITOR vim
set PATH $PATH /usr/local/texlive/2014/bin/x86_64-linux

alias ccat='pygmentize -f console256 -g'
alias csi='csi -q'

if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx
	end
end
