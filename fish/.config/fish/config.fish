umask 0077

set EDITOR vim
set PATH ~/.local/bin $PATH
alias ccat='pygmentize -f console256 -g'

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end
