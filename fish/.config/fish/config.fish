umask 0077

set EDITOR vim
set PATH ~/.local/bin $PATH

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end
