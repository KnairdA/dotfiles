umask 0077

set EDITOR vim

set fish_greeting ""

alias ls='ls -h --color --group-directories-first'
alias csi='csi -q'
alias mp3-dl='youtube-dl --extract-audio --audio-format mp3'
alias weather='curl wttr.in/Karlsruhe'

eval (dircolors -c ~/.dir_colors)
eval (python -m virtualfish)

set fish_color_normal         white
set fish_color_command        magenta --bold
set fish_color_param          green
set fish_color_error          brred
set fish_color_operator       cyan
set fish_color_comment        white
set fish_color_cwd            green
set fish_color_quote          brown
set fish_color_autosuggestion 555

if [ (hostname) = "obelix" ]
	set PATH $PATH /usr/local/bin/ /usr/local/texlive/2014/bin/x86_64-linux ~/.cabal/bin/

	alias i='sxiv'
	alias orb='open ~/webarchive/data/(ls ~/webarchive/data/ | sort -R | head -n 1)/index.html'
end
