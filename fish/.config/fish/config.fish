umask 0077

set EDITOR vim
set PATH $PATH /usr/local/bin/ /usr/local/texlive/2014/bin/x86_64-linux

set fish_greeting ""

alias csi='csi -q'
alias i='sxiv'
alias mp3-dl='youtube-dl --extract-audio --audio-format mp3'
alias weather='curl wttr.in/Karlsruhe'

eval (dircolors -c ~/.dir_colors)
eval (python -m virtualfish)
