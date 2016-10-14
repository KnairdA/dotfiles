umask 0077

set EDITOR vim

set fish_greeting ""

alias csi='csi -q'
alias mp3-dl='youtube-dl --extract-audio --audio-format mp3'
alias weather='curl wttr.in/Karlsruhe'

eval (dircolors -c ~/.dir_colors)
eval (python -m virtualfish)

if [ (hostname) = "obelix" ]
	set PATH $PATH /usr/local/bin/ /usr/local/texlive/2014/bin/x86_64-linux

	alias i='sxiv'
	alias orb='open ~/webarchive/data/(ls ~/webarchive/data/ | sort -R | head -n 1)/index.html'
end
